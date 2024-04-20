import 'package:flutter/material.dart';
import 'main.dart';
import 'halaman3.dart';
void main() {
  runApp(ComicReaderApp());
}
class PrivacyPolicy extends StatelessWidget {
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
                  'SkyBlue',
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
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 20),
      Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.”',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                'Section 1.10.32 of “de Finibus Bonorum et Malorum”, written by Cicero in 45 BC',
                textAlign: TextAlign.justify,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10),
              Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.”',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 50), // Spasi antara tombol tambahan dan garis hitam
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
                          MaterialPageRoute(builder: (context) => PrivacyPolicy()),
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
    ],
  ),
),
    );
  }
}
