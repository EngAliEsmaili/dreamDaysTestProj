import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title ;
  CardTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title ,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 20 ,
        fontWeight: FontWeight.bold ,
      ),);
  }
}
