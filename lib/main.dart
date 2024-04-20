
import 'package:flutter/material.dart';
import 'Comicscreen1.dart';
import 'halaman2.dart';
import 'halaman3.dart';
import 'halaman4.dart';
import 'MenuUtama/Beranda.dart';

void main() {
  runApp(ComicReaderApp());
}

class ComicReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyBlue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Tambahkan tema gelap di sini
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(), // Aktifkan mode gelap di sini
      home: ComicHomePage(),
    );
  }
}

class ComicHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkyBlue',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(),
    home: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255), // Ubah warna latar belakang sesuai kebutuhan
              borderRadius: BorderRadius.circular(10), // Ubah bentuk border sesuai kebutuhan

            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Text(
                  'SkyBlue',
                  style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 155, 27, 241)), // Ubah warna teks sesuai kebutuhan
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(100, 100, 0, 0),
                      items: <PopupMenuEntry>[
                        PopupMenuItem(
                          child: Text('Premium'),
                        ),
                        PopupMenuItem(
                          child: Text('Kontak'),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color:Color.fromARGB(255, 164, 188, 198),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                'SkyBlue ID',
                style: TextStyle(fontSize: 50),
                
              ),
                ),
                Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Baca komik  disini dengan santai',
                style: TextStyle(fontSize: 15),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(' dan mudah diakses.',
                style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40 ),
                child: Text(' Silakan pilih.',
                style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                
                child: Text('Log In'),
              ),


               SizedBox(height: 20),
                // Spasi antara tombol Log In dan tombol tambahan
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Beranda()), // Ganti Halaman2 dengan halaman tujuan Anda
                  );
                },
                child: Text('Guest'),
              ),


               SizedBox(height: 80), // Spasi antara tombol tambahan dan garis hitam
              Container(
                width: double.infinity,
                height: 2,
                color: Color.fromARGB(255, 70, 69, 69),
              ), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TermofService()),
                        );
                      },


                      child: Text(
                        'Term of Service',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 54, 54, 54),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                        );
                      },


                      child: Text(
                        'Privaciy policy',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 54, 54, 54),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                
              ),


             Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Transalator()),
                        );
                      },

                      
                      child: Text(
                        'SkyBlue Translator',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 54, 54, 54),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}

