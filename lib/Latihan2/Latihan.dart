
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Comic {
  final int id;
  final String name;

  Comic({this.id = 0, this.name = ''});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name};
  }
}

class DatabaseHelper {
  static Database? _database;
  static const String DB_NAME = 'comic_database.db';
  static const String TABLE_NAME = 'comics';
  static const String COLUMN_ID = 'id';
  static const String COLUMN_NAME = 'name';

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, DB_NAME);
    return await openDatabase(databasePath, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE $TABLE_NAME (
          $COLUMN_ID INTEGER PRIMARY KEY,
          $COLUMN_NAME TEXT
        )
      ''');
    });
  }

  Future<void> insertComic(Comic comic) async {
    final db = await database;
    await db.insert(TABLE_NAME, comic.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Comic>> getComics() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME);
    return List.generate(maps.length, (i) {
      return Comic(
        id: maps[i][COLUMN_ID],
        name: maps[i][COLUMN_NAME],
      );
    });
  }

  Future<void> deleteComic(int id) async {
    final db = await database;
    await db.delete(
      TABLE_NAME,
      where: '$COLUMN_ID = ?',
      whereArgs: [id],
    );
  }
}