import 'package:desafioma9/app/modules/home/data/model/movie_item.dart';
import 'package:desafioma9/app/modules/home/domain/entities/movie_item_model.dart';
import 'package:desafioma9/app/shared/dio/client_dio.dart';
import 'package:mobx/mobx.dart';

abstract class GetListMoviesDataSource{
  Future<ObservableList<MovieItemModel>> getMoviesItens();
}

class GetListMoviesDataSourceStandart implements GetListMoviesDataSource{

  ClientDio clientDio;

  GetListMoviesDataSourceStandart(this.clientDio);

  @override
  Future<ObservableList<MovieItemModel>> getMoviesItens() async {
    try{
      var result = await clientDio.client.get("/v1/filmes");

      ObservableList<MovieItemModel> moviesList = ObservableList<MovieItemModel>();
      
      for(var item in result.data["filmes"]){
        moviesList.add(MovieItem.fromMap(item));
      }

      return moviesList;
    }catch(e){
      print(e);
      return e;
    }
  }
}