import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Stateful app Examplae',
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  _FavoriteCityState createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = '';

  @override
  Widget build(BuildContext context) {

    debugPrint('Favorite City widget created');

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint('set State Called');
                  nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'Your best City is $nameCity',
                  style: TextStyle(fontSize: 20.0),
                )),
          ],
        ),
      ),
    );
  }
}
