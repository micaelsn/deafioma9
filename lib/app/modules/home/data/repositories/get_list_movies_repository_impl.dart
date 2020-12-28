import 'package:dartz/dartz.dart';
import 'package:desafioma9/app/modules/home/data/data_source/data_source.dart';
import 'package:desafioma9/app/modules/home/domain/entities/movie_item_model.dart';
import 'package:desafioma9/app/modules/home/domain/repositories/get_list_movies_repository.dart';
import 'package:desafioma9/app/shared/errors/errors.dart';
import 'package:mobx/mobx.dart';

class GetListMoviesRepositoryImpl implements GetListMoviesRepository{
  GetListMoviesDataSourceStandart dataSource;

  GetListMoviesRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, ObservableList<MovieItemModel>>> getMoviesItens() async {
    try {
      var result = await dataSource.getMoviesItens();
      return Right(result);
    } catch(e){
      return Left(ServerError());
    }
  }

}