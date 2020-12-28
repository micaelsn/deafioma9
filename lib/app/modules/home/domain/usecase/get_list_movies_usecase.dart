import 'package:dartz/dartz.dart';
import 'package:desafioma9/app/shared/errors/errors.dart';
import 'package:desafioma9/app/modules/home/domain/entities/movie_item_model.dart';
import 'package:desafioma9/app/modules/home/domain/repositories/get_list_movies_repository.dart';
import 'package:mobx/mobx.dart';

import '../entities/movie_item_model.dart';

abstract class GetListMoviesUseCase{
  Future<Either<Failure, ObservableList<MovieItemModel>>> getListMovies();
}

class GetListMoviesUseCaseImpl extends GetListMoviesUseCase{
  GetListMoviesRepository repository;

  GetListMoviesUseCaseImpl(this.repository);
  @override
  Future<Either<Failure, ObservableList<MovieItemModel>>>  getListMovies() async => repository.getMoviesItens();
}
