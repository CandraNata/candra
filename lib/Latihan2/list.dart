import 'package:flutter/material.dart';
import 'Latihan.dart';

class ComicListScreen extends StatefulWidget {
  @override
  _ComicListScreenState createState() => _ComicListScreenState();
}

class _ComicListScreenState extends State<ComicListScreen> {
  final dbHelper = DatabaseHelper();
  final TextEditingController _nameController = TextEditingController();
  late Future<List<Comic>> comicsFuture;

  @override
  void initState() {
    super.initState();
    refreshComicList();
  }

  Future<void> refreshComicList() async {
    setState(() {
      comicsFuture = dbHelper.getComics();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comic Favorites'),
      ),
      body: FutureBuilder<List<Comic>>(
        future: comicsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final comics = snapshot.data!;
            return ListView.builder(
              itemCount: comics.length,
              itemBuilder: (context, index) {
                final comic = comics[index];
                return ListTile(
                  title: Text(comic.name),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () async {
                      await dbHelper.deleteComic(comic.id);
                      refreshComicList();
                    },
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Tambah Komik Baru'),
                content: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Nama Komik'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Batal'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final name = _nameController.text;
                      if (name.isNotEmpty) {
                        await dbHelper.insertComic(Comic(id: 0, name: name));
                        _nameController.clear();
                        refreshComicList();
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text('Simpan'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}