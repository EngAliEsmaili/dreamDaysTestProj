import 'package:dreamdays/data/models/experiences_model.dart';
import 'package:dreamdays/presentation/widgets/bell_icon.dart';
import 'package:dreamdays/presentation/widgets/drawer_menu.dart';
import 'package:dreamdays/presentation/widgets/head_title.dart';
import 'package:dreamdays/presentation/widgets/section_title.dart';
import 'package:dreamdays/presentation/widgets/trip_paln_card_view.dart';
import 'package:dreamdays/presentation/widgets/trip_paln_type_view.dart';
import 'package:dreamdays/service/experiences_service.dart';
import 'package:flutter/material.dart' ;
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var tripPlanViewState = false ;
  Future<List<ExperiencesModel>> experiences ;
  var service = ExperiencesService() ;
  @override
  void initState() {
    experiences = service.getExperiences();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title:  Text('11:30 AM Dubai' ,style: TextStyle(
          color: Colors.black54 ,
          fontSize: 14,
        ),),
        actions: <Widget>[
          BellIcon()  ,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeadTitle() ,
            Container(
              padding: EdgeInsets.only(left: 18 , right: 5 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SectionTitle(title: 'Your Dubai trip plan',) ,
                  IconButton(
                    icon: Icon(tripPlanViewState == false ? Icons.view_week : Icons.center_focus_strong ),
                    onPressed: ()
                    {
                      setState(() {
                        tripPlanViewState = !tripPlanViewState ;
                      });
                    },
                  )
                ],
              ),
            ) ,
            FutureBuilder<List<ExperiencesModel>>(
              future: experiences,
              builder: (context , snapshot){
                if(snapshot.hasData)
                  {
                    return Container(
                      child: tripPlanViewState == false ?
                      TripPlanCardView(
                        snapshot: snapshot,
                        length: snapshot.data.length,
                      )
                          :
                      TripPlanTypeView(
                        snapshot: snapshot,
                        length: snapshot.data.length,
                      ),
                    );
                  }else if(snapshot.hasError)
                    {
                      return Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 70,),
                              Text('There is a problem with receiving data.') ,
                              SizedBox(height: 10,),
                              FlatButton(
                                child: Text('Try again'),
                                onPressed: (){
                                  setState(() {
                                    experiences = service.getExperiences();
                                  });
                                },
                              )
                            ],
                          )
                        ),
                      ) ;
                    }else
                      {
                        return Container(
                          height: 265,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ) ;
                      }
              },
            ),
            Container(
              padding: EdgeInsets.only(left: 18 , right: 5 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SectionTitle(title: 'Event around you',) ,
                  Container() ,
                ],
              ),
            ) ,
          ],
        ),
      ),
    );
  }
}
