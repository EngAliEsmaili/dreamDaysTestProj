import 'package:dreamdays/presentation/widgets/card_description.dart';
import 'package:dreamdays/presentation/widgets/card_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TripPlanCardView extends StatefulWidget {
  var snapshot  ,  length;
  TripPlanCardView({this.snapshot,this.length});

  @override
  _TripPlanCardViewState createState() => _TripPlanCardViewState(this.snapshot , this.length);
}

class _TripPlanCardViewState extends State<TripPlanCardView> {
  var snapshot  ,  length;
  _TripPlanCardViewState(this.snapshot , this.length);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10 ,  bottom: 20),
      child: ListView.builder(
        itemCount: length ,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)
        {
          return Container(
            width: 330,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: index == 0 ? 8 : 2 , right: 2 , bottom: 15 , top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(4, 4), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 110,
                        height: 265,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15) , topLeft: Radius.circular(15)) ,
                          child: Image.network(
                            snapshot.data[index].images[0].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15) , topLeft: Radius.circular(15)) ,
                        ),
                      ) ,
                      Container(
                        width: 190,
                        height: 265,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15) , topRight: Radius.circular(15)) ,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width :190,
                              margin: EdgeInsets.only(top: 23),
                              padding: EdgeInsets.only(left: 10 ,  right: 10),
                              child: CardTitle(title:snapshot.data[index].short_name.toString() != 'null' ? snapshot.data[index].short_name.toString() : ' ') ,
                            ) ,
                            Container(
                              width :190,
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.only(left: 10 ,  right: 10),
                              child: CardDescription(desc:snapshot.data[index].short_description.toString() != 'null' ? snapshot.data[index].short_description.toString() : ' ') ,
                            ) ,
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.only(left: 10 ,  right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 65,
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(Icons.calendar_today ,  size: 20, color: Colors.redAccent,) ,
                                            SizedBox(width: 10,),
                                            Text('today' , style: TextStyle(
                                                color: Colors.redAccent
                                            ),)
                                          ],
                                        ),
                                      ) ,
                                      Text(snapshot.data[index].start_time.toString() != 'null' ? snapshot.data[index].start_time.toString() : ' ', style: TextStyle(
                                          color: Colors.redAccent ,
                                          fontSize: 16
                                      ),)
                                    ],
                                  ) ,
                                  SizedBox(height: 7,) ,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 170,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(Icons.person ,  size: 20,) ,
                                            SizedBox(width: 10,),
                                            Text(snapshot.data[index].passengers[0].toString() != 'null' ? snapshot.data[index].passengers[0].toString() : ' ' ,
                                            overflow: TextOverflow.ellipsis,maxLines: 1,)
                                          ],
                                        ),
                                      ) ,

                                    ],
                                  ) ,
                                  SizedBox(height: 7,) ,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 65,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(Icons.access_time ,  size: 20) ,
                                            SizedBox(width: 10,),
                                            Text('37' )
                                          ],
                                        ),
                                      ) ,
                                      Container(
                                        width: 65,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Details' ,  style: TextStyle(
                                                color: Colors.black38
                                            ),),
                                            SizedBox(width: 1,),
                                            Icon(Icons.arrow_forward_ios ,  size: 20 ,  color: Colors.black38,) ,
                                          ],
                                        ),
                                      ) ,
                                    ],
                                  ) ,
                                ],
                              ),
                            )
                          ],
                        ),
                      ) ,
                    ],
                  ),
                ) ,
                Container(
                  width: 20,
                  height: 265,
                  child: Center(
                    child: Text(index != length-1 ? '....' : ''),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
