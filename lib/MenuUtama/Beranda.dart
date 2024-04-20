

import 'package:bacakomik/Harian/dice.dart';
import 'package:bacakomik/Harian/thegamer.dart';
import 'package:bacakomik/Harian/towerofgod.dart';
import 'package:bacakomik/MenuUtama/setting.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Daftarkomik.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});
  

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _selectedIndex = 0;

  // List of pages to display for each tab
  final List<Widget Function(BuildContext)> _pages = [
    // Content page with CarouselSlider
    (context) => content(context),
    // Placeholder for Favorite page
    (context) => DaftarPage(),
    // Placeholder for Setting page
    (context) => More(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SkyBlue Komik"),
        automaticallyImplyLeading: false
      ),
      body: _pages[_selectedIndex](context),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}


Widget content(BuildContext context) {
  return SingleChildScrollView(
     child :Column(
    children: [
      Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 300,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 255, 7)),
                child: Text(
                  ' Hot',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    ),

      ),
      SizedBox(height: 20),
      Container(
        child: Column(
          children: [
            Text(
              'Update terbaru',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 9),
        
      CarouselSlider(
      options: CarouselOptions(
        height: 170,
        aspectRatio: 16 / 9,
        viewportFraction: 0.3,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: false,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 248, 244)),
                child: Text(
                  ' Favorite',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    ),

          ],
        ),
 

      ),
      SizedBox(height: 20),
        // Widget CarouselSlider untuk update terbaru
        Container(
          child: Column(
            children: [
              Text(
                'Project',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              CarouselSlider(
                options: CarouselOptions(
                  height: 170,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.3,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DaftarPage()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 3, 248, 244),
                          ),
                          child: Text(
                            ' Favorite',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),
        // Widget untuk menu
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200], // Warna latar belakang kotak
            borderRadius: BorderRadius.circular(10), // Bentuk sudut kotak
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Komik:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              ListTile(
                title: Text('Dice'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dice()),
                  );
                },
              ),
              SizedBox(height: 1,),
              ListTile(
                title: Text('Tower Of God'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => towerofgod()),
                  );
                },
              ),
              SizedBox(height: 1,),
              ListTile(
                title: Text('The Gamer'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => thegamer()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}