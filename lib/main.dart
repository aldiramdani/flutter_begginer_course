import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row,Column and Image URL',

      home:Scaffold(
        appBar: AppBar(title: Text('Basic List View'),),
        body: getListView(),
      ),debugShowCheckedModeBanner: false
    );
  }
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text('Landscape'),
        subtitle: Text('Beautiful View!'),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint('Landscape Tapped');
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Windows'),
        ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
      Text('Yet Another Element in list'),
      Container(color: Colors.red,height: 50.0,)

    ],
  );
    return listView;
}

