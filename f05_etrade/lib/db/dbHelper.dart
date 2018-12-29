import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:f05_etrade/models/product.dart';

class DbHelper {
  String tblProduct = "Products";
  String colId = "Id";
  String colName = "Name";
  String colDescription = "Description";
  String colPrice = "Price";

  static final DbHelper _dbHelper = DbHelper._internal();

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db; // sqflite

  Future<Database> get db async {
    if (_db != null) {
      _db = await initializeDb();
    }

    return _db;
  }

  initializeDb() {}
}
