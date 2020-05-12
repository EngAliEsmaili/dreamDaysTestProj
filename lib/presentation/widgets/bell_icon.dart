import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
class BellIcon extends StatefulWidget {
  @override
  _BellIconState createState() => _BellIconState();
}

class _BellIconState extends State<BellIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Badge(
        shape: BadgeShape.square,
        borderRadius: 20,
        padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 5),
        badgeContent: Text('99+' , style: TextStyle(
          color: Colors.white ,
          fontSize: 9,
        ),),
        child: Icon(Icons.add_alert),
      ),
      onPressed: ()
      {
        print('test');
      },
    );
  }
}
