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
        appBar: AppBar(title: Text('Long List'),),
        body: getLongListView(),
      ),debugShowCheckedModeBanner: false
    );
  }
}

List<String> getListElement(){
  var items = List<String>.generate(1000, (counter) => 'Item $counter');
  return items;
}

Widget getLongListView(){

  var listItems = getListElement();

  var listView = ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            debugPrint('${listItems[index]} was tapped');
          },
        );
      }
  );
  return listView;
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

