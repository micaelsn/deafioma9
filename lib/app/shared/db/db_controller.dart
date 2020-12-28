import 'package:desafioma9/app/shared/db/script.dart';

import '../../modules/home/data/model/movie_item.dart';
import 'database_helper.dart';

class ControllerDB{
  DatabaseHelper database = new DatabaseHelper();

  Future<List<Map<String,dynamic>>> selectMovies() async {
    var dbLocation = await database.db;
    var res = await dbLocation.query(Script.TABLE_MOVIE);
    if(res.length > 0){
      return res;
    }
    return null;
  }

  Future deleteTableMovie(MovieItem movie) async{
    var dbLocation = await database.db;
    await dbLocation.rawDelete("DELETE FROM " + Script.TABLE_MOVIE +" WHERE ${Script.COLUMN_TITLE} == ?", [movie.title]);
  }

  Future<int> saveMovie(MovieItem movie) async {
    var dbLocation = await database.db;
    var res = await dbLocation.insert(Script.TABLE_MOVIE, movie.toMap());
    return res;
  }

}