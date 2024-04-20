import 'package:bacakomik/Comicscreen1.dart';
import 'package:bacakomik/HalamanUtama.dart';
import 'package:bacakomik/Latihan2/list.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp());
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              // Navigasi ke halaman login
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            tooltip: 'Log In',
            child: Icon(Icons.login),
            heroTag: null,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Navigasi ke halaman profil
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profil()),
              );
            },
            tooltip: 'Profile',
            child: Icon(Icons.person),
            heroTag: null,
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Navigasi ke halaman selanjutnya
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComicListScreen()),
              );
            },
            tooltip: 'Latihan2',
            child: Icon(Icons.arrow_forward),
            heroTag: null,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
