import 'package:flutter/material.dart';

class CardDescription extends StatelessWidget {
  final String desc ;
  CardDescription({this.desc});
  @override
  Widget build(BuildContext context) {
    return Text(desc ,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 15,
        color: Colors.black26,
        fontWeight: FontWeight.bold ,
      ),);
  }
}
