import 'package:flutter/material.dart';
import 'Diary_Home.dart';

void main() => runApp(Diary());

/**
* Nên tạo State< extends từ StatefulWidget>
**/


/*
* Nên đặt tên class theo chuẩn chung, có ý nghĩa, đừng tùy hứng. e.g: DiaryScreen, DiaryScreenState,...
*/
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
/**
* Xóa khoảng trống vô nghĩa này nha. Nhớ format code cho đẹp (Ctrl Alt L) 
**/

        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
