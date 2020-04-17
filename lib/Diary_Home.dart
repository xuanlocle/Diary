import 'package:flutter/material.dart';
import 'package:flutterappontapwhatapp/screen/cameraScreen.dart';
import 'package:flutterappontapwhatapp/screen/chatScreen.dart';
import 'package:flutterappontapwhatapp/screen/statusScreen.dart';

class DiaryHome extends StatefulWidget {
  @override
  DiaryHomeState createState() => DiaryHomeState();
}

class DiaryHomeState extends State<DiaryHome>    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(initialIndex:1,length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              title: Text("Diary"),
              elevation:0.7,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search),)
              ],
              bottom:  new TabBar(
                controller: tabController,
                indicatorColor: Colors.black ,
                tabs: <Widget>[
                  new Tab(icon: new Icon(Icons.camera_alt)),
                  new Tab(text: 'status',),
                  new Tab(text: 'chats',),


                ],
              ),
//              bottom: new TabBar(
//                      controller: tabController,
//              ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
                  new cameraScreen(),
                  new statusScreen(),
                  new chatScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(icon: Icon(Icons.message),
        onPressed: ()=> print('open chat'),
        ),
      ),

    );
  }
}


