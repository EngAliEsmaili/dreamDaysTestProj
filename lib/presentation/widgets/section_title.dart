import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title ;
  SectionTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title ,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
      fontSize: 15 ,
      fontWeight: FontWeight.bold ,
    ),);
  }
}
