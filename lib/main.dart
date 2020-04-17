import 'package:flutter/material.dart';
import 'Diary_Home.dart';

void main() => runApp(Diary());

class Diary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Diary',
        theme: new ThemeData(
          primaryColor: Colors.blue,

          accentColor: Colors.red,



        ),
        home: new DiaryHome(


        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
