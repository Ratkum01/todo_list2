import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_services/data_models/dbtodo.dart';

class DBProvider{
  static final DBProvider db = DBProvider();
  Database? _database;

//Future<Database>
  Future<Database> get database async{
    if(_database !=  null) return _database!;
    _database = await initDB();
    return _database!;
  }
  initDB() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,"TestDB.db");
    return await openDatabase(path, version: 1, onOpen: (db){}, onCreate: (Database db, int version)async{
      await db.execute("CREATE TABLE MY_LIST Test (id INTEGER PRIMARY KEY, title TEXT, description TEXT)'");
    });
  }
  addTodo(DBTodo todo) async{
    final db= await database;
    var raw = await db.rawInsert(
      "INSERT Into TODO(id, tatle, description) "
      "VALUES(?,?,?)",
      [todo.id, todo.title, todo.description],
    );
    return raw;
  }
}