import 'package:path/path.dart';
import 'package:practical2/model.dart';
import 'package:sqflite/sqflite.dart';



class DbHelper{

  DbHelper._data();

  static final DbHelper dbData = DbHelper._data();

  static Database? db;

  initdb() async {

    String path = await getDatabasesPath();
    String finalpath = join(path, "Coupen.db");

    db = await openDatabase(path,version: 1,onCreate: (database,version){

      String query = "CREATE TABLE coupen(id INTEGER PRIMARY KEY AUTOINCREMENT,coupencode TEXT)";
      db!.execute(query);
    });

  }
  Future<int> insertRecord({required Coupen data}) async {
    db = await initdb();


    String query = "INSERT INTO  coupen(code) VALUES(?)";

    List args = [data.code];


    return await db!.rawInsert(query, args);
  }
  Future<List<Coupen>> fetchAllData() async {


    db = await initdb();


    String query = "SELECT * FROM coupen";


    List<Map<String, dynamic>> fetchedData = await
    db!.rawQuery(query);


    List<Coupen> data = fetchedData.map((e) =>
        Coupen.fromMap(e)).toList();


    return data;


  }

}