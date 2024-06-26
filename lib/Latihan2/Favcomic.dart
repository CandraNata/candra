import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(MaterialApp());
}

class Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comic Favorites',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComicListScreen(),
    );
  }
}
