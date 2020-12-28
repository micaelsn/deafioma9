import 'package:dartz/dartz.dart';
import 'package:desafioma9/app/shared/errors/errors.dart';
import 'package:desafioma9/app/modules/home/domain/entities/movie_item_model.dart';
import 'package:mobx/mobx.dart';

abstract class GetListMoviesRepository{
  Future<Either<Failure, ObservableList<MovieItemModel>>> getMoviesItens();
}