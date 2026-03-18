import 'package:flutter/material.dart';

/*
  Flutter Tasks - Day 03
  Only Provided main file, as we are learning about basic widgets in Flutter.
*/

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

/*
  Learnt Widgets:
  1. Text Widget
  2. Image Widget
  3. Icon Widget
  4. ElevatedButton Widget
  5. Container Widget
  6. Row Widget
  7. Column Widget
  8. Container Widget
  9. Scaffold Widget
  10. AppBar Widget
*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Profile Screen',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'IndieFlower',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.network('https://randomuser.me/api/portraits/men/1.jpg'),
                Text(
                  'Demo Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Bio: Flutter Developer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ]
            ),
            ElevatedButton(
                onPressed: () {}, 
                child: Text('Like Profile')
            ),
          ],
        )
      ),
    );
  }
}
