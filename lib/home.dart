import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 10.0,top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        'Space Jet',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ],
              ),
              Row(

                children: <Widget>[

                  Expanded(
                      child: Text(
                        'Air Jet',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                  Expanded(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ],
              ),
              FlightImageAsset(),
              FlighBookingButton()
            ],
          )),
    );
  }
}
//row samping column bawah

class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image);
  }
}

class FlighBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
              'Book Your Flight',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700
              ),
          ),
          elevation: 6.0,
          onPressed: (){
            //Action
            bookFlight(context);
          }),
    );
  }

  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text('Flight Booked Successfully'),
      content: Text('Have a pleasant flight'),
    );

    showDialog(context: context,
    builder: (BuildContext context){
      return alertDialog;
    }
    );
  }

}
