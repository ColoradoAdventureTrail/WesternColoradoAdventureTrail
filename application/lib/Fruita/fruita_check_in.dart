import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:firebase_database/firebase_database.dart';

class CheckInPage extends StatefulWidget {
  @override
  _CheckInPageState createState() => _CheckInPageState();
}

class _CheckInPageState extends State<CheckInPage> {
  String _nights;
  String _myNightsResult;

  String _moneySpent;
  String _moneySpentResult;

  String _whereStayed;
  String _whereStayedResult;

  String _forRecreation;
  String _forRecreationResult;
  final formKey = new GlobalKey<FormState>();
  final DBRef = FirebaseDatabase.instance.reference();
  @override
  void initState() {
    super.initState();
    _nights = '';
    _myNightsResult = '';
    _moneySpent = '';
    _moneySpentResult = '';
    _whereStayed = '';
    _whereStayedResult = '';
    _forRecreation = '';
    _forRecreationResult = '';
  }

  void writeData(q1, q2, q3, q4) {
    DBRef.push().set({
      "Location": "Fruita",
      "night stayed": q1,
      "money spent": q2,
      "where stayed": q3,
      "where recreated" : q4
    });
  }

  void checkLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    //your location
    double latitude = double.parse((position.latitude).toStringAsFixed(4));
    double longitude = double.parse((position.longitude).toStringAsFixed(4));
    //check in location
    double clatitude = double.parse((37.422).toStringAsFixed(4));
    double clongitude = double.parse((-122.084).toStringAsFixed(4));
    print(latitude);
    print(longitude);
    //check in is successful, save data to firebase here
    if (latitude == clatitude && longitude == clongitude) {
      writeData(_nights, _moneySpent, _whereStayed, _forRecreation);
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Succeeded"),
              content: Text(
                  "Successfully checked in."),
              actions: <Widget>[
                new FlatButton(onPressed: () {Navigator.of(context).pop(); Navigator.of(context).pop();}, child: new Text("Close"))
              ],
            );
          });
    } else {
      //open dialog saying check in failed
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Failed"),
              content: Text(
                  "Failed to checked in. Move closer to the check in station and try again"),
              actions: <Widget>[
                new FlatButton(onPressed: () {Navigator.of(context).pop();}, child: new Text("Close"))
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-in Questionnaire'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: DropDownFormField(
                  titleText: 'How many nights did you stay?',
                  hintText: 'Please choose one',
                  value: _nights,
                  onSaved: (value) {
                    setState(() {
                      _nights = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _nights = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "1",
                      "value": "1",
                    },
                    {
                      "display": "2",
                      "value": "2",
                    },
                    {
                      "display": "3",
                      "value": "3",
                    },
                    {
                      "display": "4+",
                      "value": "4+",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(_myNightsResult),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: DropDownFormField(
                  titleText: 'How much money did you spend on this trip?',
                  hintText: 'Please choose one',
                  value: _moneySpent,
                  onSaved: (value) {
                    setState(() {
                      _moneySpent = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _moneySpent = value;
                    });
                  },
                  dataSource: [
                    {
                      "display2": "\$0-99",
                      "value2": "\$0-99",
                    },
                    {
                      "display2": "\$100-499",
                      "value2": "\$100-499",
                    },
                    {
                      "display2": "\$500-999",
                      "value2": "\$500-999",
                    },
                    {
                      "display2": "\$1000+",
                      "value2": "\$1000+",
                    },
                  ],
                  textField: 'display2',
                  valueField: 'value2',
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(_moneySpentResult),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: DropDownFormField(
                  titleText: 'Where did you stay?',
                  hintText: 'Please choose one',
                  value: _whereStayed,
                  onSaved: (value) {
                    setState(() {
                      _whereStayed = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _whereStayed = value;
                    });
                  },
                  dataSource: [
                    {
                      "display3": "Campground",
                      "value3": "Campground",
                    },
                    {
                      "display3": "Hotel",
                      "value3": "Hotel",
                    },
                    {
                      "display3": "With Friends/Family",
                      "value3": "With Friends/Family",
                    },
                  ],
                  textField: 'display3',
                  valueField: 'value3',
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(_whereStayedResult),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: DropDownFormField(
                  titleText: 'What did you do for recreation?',
                  hintText: 'Please choose one',
                  value: _forRecreation,
                  onSaved: (value) {
                    setState(() {
                      _forRecreation = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _forRecreation = value;
                    });
                  },
                  dataSource: [
                    {
                      "display2": "Mountain Biking",
                      "value2": "Mountain Biking",
                    },
                    {
                      "display2": "Hiking",
                      "value2": "Hiking",
                    },
                    {
                      "display2": "Sightseeing",
                      "value2": "Sightseeing",
                    },
                    {
                      "display2": "Visited Local Attractions",
                      "value2": "Visited Local Attractions",
                    },
                  ],
                  textField: 'display2',
                  valueField: 'value2',
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(_forRecreationResult),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: RaisedButton(
                  child: Text('Check-In'),
                  onPressed: checkLocation,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}