import 'package:flutter/material.dart';
import 'package:flutterapp/Auxiliary/hyperlink.dart';

class CanyonRimTrail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = [
      'Photo',
      'Difficulty',
      'Distance',
      'Location',
      'Website'
    ];
    final icons = [
      Icons.add,
      Icons.assignment,
      Icons.arrow_forward,
      Icons.map,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Easy',
      '4.8 Miles',
      '39.057125, -108.7972321',
      'https://www.alltrails.com/trail/us/colorado/flume-canyon-trail'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Flume Canyon Trail"),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.white])),
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
                  'assets/images/FlumeCanyon.JPG',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text(
                        'https://www.alltrails.com/trail/us/colorado/flume-canyon-trail'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.alltrails.com/trail/us/colorado/flume-canyon-trail',
                        'View'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class MonumentCanyonLoopTrail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = [
      'Photo',
      'Difficulty',
      'Distance',
      'Location',
      'Website'
    ];
    final icons = [
      Icons.add,
      Icons.assignment,
      Icons.arrow_forward,
      Icons.map,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Moderate',
      '4.5 Miles',
      '39.0715671,-108.694049',
      'https://www.alltrails.com/explore/trail/us/colorado/monument-canyon-loop-trail'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Monument Canyon Loop Trail"),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.white])),
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
                  'assets/images/monument-canyon.jpg',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text(
                        'https://www.alltrails.com/explore/trail/us/colorado/monument-canyon-loop-trail'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.alltrails.com/explore/trail/us/colorado/monument-canyon-loop-trail',
                        'View'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class RattlesnakeArchesTrail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = [
      'Photo',
      'Difficulty',
      'Distance',
      'Location',
      'Website'
    ];
    final icons = [
      Icons.add,
      Icons.assignment,
      Icons.arrow_forward,
      Icons.map,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Hard',
      '13.5 Miles',
      '39.057125,-108.7972017',
      'https://www.alltrails.com/explore/trail/us/colorado/rattlesnake-arches'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("RattlesnakeArchesTrail"),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.white])),
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
                  'assets/images/RattlesnakeArches.JPG',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text(
                        'https://www.alltrails.com/explore/trail/us/colorado/rattlesnake-arches'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.alltrails.com/explore/trail/us/colorado/rattlesnake-arches',
                        'View'),
                  ),
                );
              }
            },
          )),
    );
  }
}
