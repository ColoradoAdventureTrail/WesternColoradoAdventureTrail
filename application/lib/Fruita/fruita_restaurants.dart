import 'package:flutter/material.dart';
import 'package:flutterapp/Auxiliary/hyperlink.dart';

class HotTomato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Hours', 'Phone', 'Address', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Tuesday thru Saturday 11am - 9pm',
      '(970) 858-1117',
      '124 N. Mulberry St. Fruita CO 81521',
      'https://www.hottomatopizza.com'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Tomato"),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.white])),
          constraints: BoxConstraints.expand(),
          width: double.maxFinite,
          //height: 350,
          child: ListView.builder(
            itemCount: cardTitles.length,
            itemBuilder: (context, index) {
              if (cardTitles[index] != 'Website' &&
                  cardTitles[index] != 'Photo') {
                return Card(
                  child: ListTile(
                    leading: Icon(icons[index]),
                    title: Text(cardTitles[index]),
                    subtitle: Text(cardSubTitles[index]),
                  ),
                );
              } else if (cardTitles[index] == 'Photo') {
                return Image.asset(
                  'assets/images/hot_tomato.png',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('https://www.hottomatopizza.com'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.hottomatopizza.com', 'View Website'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class RibCityGrill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Hours', 'Phone', 'Address', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Sunday thru Thursday 11am - 9pm\nFriday thru Saturday 11am - 9:30pm',
      '(970) 858-6566',
      '455 Kokopelli Blvd #5, Fruita, CO 81521',
      'https://www.ribcitycolorado.com'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Rib City Grill"),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.white])),
          constraints: BoxConstraints.expand(),
          width: double.maxFinite,
          //height: 350,
          child: ListView.builder(
            itemCount: cardTitles.length,
            itemBuilder: (context, index) {
              if (cardTitles[index] != 'Website' &&
                  cardTitles[index] != 'Photo') {
                return Card(
                  child: ListTile(
                    leading: Icon(icons[index]),
                    title: Text(cardTitles[index]),
                    subtitle: Text(cardSubTitles[index]),
                  ),
                );
              } else if (cardTitles[index] == 'Photo') {
                return Image.asset(
                  'assets/images/RibCity.png',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('https://www.ribcitycolorado.com'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.ribcitycolorado.com/rib-city-grill-fruita/', 'View Website'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class AspenStreetCoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Hours', 'Phone', 'Address', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Monday thru Saturday 6:30am - 5pm\nSunday 7:00am - 1:00pm',
      '(970) 858-8888',
      '136 E Aspen Ave, Fruita, CO 81521',
      'No business website'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspen Street Coffe Co"),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.white])),
          constraints: BoxConstraints.expand(),
          width: double.maxFinite,
          //height: 350,
          child: ListView.builder(
            itemCount: cardTitles.length,
            itemBuilder: (context, index) {
              if (cardTitles[index] != 'Website' &&
                  cardTitles[index] != 'Photo') {
                return Card(
                  child: ListTile(
                    leading: Icon(icons[index]),
                    title: Text(cardTitles[index]),
                    subtitle: Text(cardSubTitles[index]),
                  ),
                );
              } else if (cardTitles[index] == 'Photo') {
                return Image.asset(
                  'assets/images/AspenStreetCoffee.jpg',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('No business website'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.yelp.com/biz/aspen-street-coffee-fruita', 'View Yelp'),
                  ),
                );
              }
            },
          )),
    );
  }
}