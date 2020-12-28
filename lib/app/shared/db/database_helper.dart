import 'dart:io' as io;

import 'script.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper()=>_instance;

  Database _db;

  Future<Database> get db async{
    if(_db != null){
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDB = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDB;
  }


  void _onCreate(Database db, int version) async{
    await db.execute(Script.SQL);
  }
}