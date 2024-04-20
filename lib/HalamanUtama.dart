import 'package:bacakomik/Servisnews.dart';
import 'package:bacakomik/dto/News.dart';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(ComicReaderApp());
}

class Profil extends StatelessWidget {
  final _news = DataService.fetchNews();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<News>>(
        future: _news,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final post = snapshot.data![index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          } else if (snapshot.hasError){
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
        ),
  );
}
}