import 'package:flutter/material.dart';

class HeadTitle extends StatefulWidget {
  @override
  _HeadTitleState createState() => _HeadTitleState();
}

class _HeadTitleState extends State<HeadTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 18 , right: 18 , top: 10 , bottom: 10),
      child: Text('Hi Hossain' ,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
        fontSize: 28 ,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}
