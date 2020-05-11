import 'package:flutter/material.dart';
import 'package:flutterapp/Auxiliary/hyperlink.dart';

class SaddlehornCampground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Season', 'Price', 'Phone', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'March 23, 2020 - October 18, 2020',
      '\$11 - \$22 / night',
      '(970) 858-3617',
      'https://www.recreation.gov/camping/campgrounds/234778'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Saddlehorn Campground"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
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
                  'assets/images/SaddlehornCampground.jpg',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('https://www.recreation.gov/camping/campgrounds/234778'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.recreation.gov/camping/campgrounds/234778', 'View Website'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class MonumentRVPark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Season', 'Price', 'Phone', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Open all year',
      '\$29 - \$52 / night\nSee rates for more info',
      '(970) 858-4405',
      'https://www.recreation.gov/camping/campgrounds/234778'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Monument RV Park"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
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
                  'assets/images/MonumentRVPark.jpg',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('http://monumentrvresort.com/rvpark.html'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'http://monumentrvresort.com/rvpark.html', 'View Website'),
                  ),
                );
              }
            },
          )),
    );
  }
}

class JamesMRobb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardTitles = ['Photo', 'Season', 'Price', 'Phone', 'Website'];
    final icons = [
      Icons.add,
      Icons.access_alarm,
      Icons.phone,
      Icons.business,
      Icons.link
    ];
    final cardSubTitles = [
      'Photo',
      'Open all year',
      'See website',
      '(970) 858-9188',
      'https://www.reserveamerica.com/explore/james-m-robbcolorado-river-state-parkfruita-section/CO/50069/overview'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("James M. Robb Colorado River State Park"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.white])),
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
                  'assets/images/JamesMRobb.png',
                  height: 250,
                  width: 200,
                );
              } else {
                return Card(
                  child: ListTile(
                    title: Text('Website'),
                    subtitle: Text('https://www.reserveamerica.com/explore/james-m-robbcolorado-river-state-parkfruita-section/CO/50069/overview'),
                    leading: Icon(Icons.link),
                    trailing: Hyperlink(
                        'https://www.reserveamerica.com/explore/james-m-robbcolorado-river-state-parkfruita-section/CO/50069/overview', 'View Website'),
                  ),
                );
              }
            },
          )),
    );
  }
}