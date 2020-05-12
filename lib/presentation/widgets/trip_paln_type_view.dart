import 'package:flutter/material.dart';

class TripPlanTypeView extends StatefulWidget {
  var snapshot  ,  length;
  TripPlanTypeView({this.snapshot,this.length});
  @override
  _TripPlanTypeViewState createState() => _TripPlanTypeViewState(this.snapshot ,this.length);
}

class _TripPlanTypeViewState extends State<TripPlanTypeView> {
  var snapshot  ,  length;
  _TripPlanTypeViewState(this.snapshot , this.length);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index)
        {
          return Row(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Icon(Icons.local_airport ,  size: 30 , color: Colors.black38,),
                            ),
                          ) ,
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Center(
                              child: Text(snapshot.data[index].short_name.toString() != 'null' ? snapshot.data[index].short_name.toString() : ' ' , style: TextStyle(
                                  color: Colors.black38 ,
                                  fontSize: 16
                              ),),
                            ),
                          ) ,
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            padding: EdgeInsets.only(top: 5 , bottom: 5 , left: 15 , right: 15 ),

                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all(Radius.circular(200))
                            ),
                            child: Text(snapshot.data[index].start_time.toString() != 'null' ? snapshot.data[index].start_time.toString() : ' ' , style: TextStyle(
                                color: Colors.white ,
                                fontSize: 14
                            ),),
                          ) ,
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Center(
                              child: Text('today' , style: TextStyle(
                                  color: Colors.black38 ,
                                  fontSize: 14
                              ),),
                            ),
                          ) ,
                        ],
                      ),
                    )
                  ],
                ),
              ) ,
              Container(
                width: 25,
                height: 150,
                child: Center(
                  child: Text(index != 4 ? '......' : ''),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
