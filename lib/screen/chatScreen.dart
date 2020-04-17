import 'package:flutter/material.dart';
import 'package:flutterappontapwhatapp/chatmodel/chatmodel.dart';

class chatScreen extends StatefulWidget {
  @override
  chatScreenState createState() => chatScreenState();
}

class chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: dummyData.length,
    itemBuilder: (context,index)=>new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.lightGreen,
              backgroundImage: new NetworkImage(dummyData[index].avatarUrl)

            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyData[index].name,style: new TextStyle(fontWeight: FontWeight.bold),
                ),
               new Text(dummyData[index].time,
               style: new TextStyle(color: Colors.grey,fontSize:14.0 ),
               ),
              ],
            ),
            subtitle: new Container(
              padding:  const EdgeInsets.only(top: 5.0),
              child: new Text(
                dummyData[index].message,
                style: new TextStyle(color: Colors.grey,fontSize: 15.0) ,
              ),
            ),


          )


        ]

    ),

    );
  }
}

