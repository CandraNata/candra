import 'package:flutter/material.dart';
import 'main.dart';
import 'halaman2.dart';
import 'halaman3.dart';
void main() {
  runApp(ComicReaderApp());
}
class Transalator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
               // Ubah warna latar belakang sesuai kebutuhan
              borderRadius: BorderRadius.circular(10), // Ubah bentuk border sesuai kebutuhan

            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Text(
                  'Login Transalator SkyBlue',
                  style: TextStyle(fontSize: 20.0, color: Color.fromARGB(255, 155, 27, 241)),
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
        backgroundColor: Color.fromARGB(255, 164, 188, 198),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika autentikasi di sini
              },
              child: Text('Login'),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika autentikasi di sini
              },
              child: Text('Buat Akun'),
            ),
            SizedBox(height: 180), // Spasi antara tombol tambahan dan garis hitam
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
    );
  }
}