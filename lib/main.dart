import 'package:dreamdays/presentation/pages/mainPage.dart';
import 'package:dreamdays/utils/colors/AppColors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor ,
        accentColor: AppColors.getAssentColor ,
      ),
      home: MainPage(),
    );
  }
}
