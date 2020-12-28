// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<GetListMoviesUseCase>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$moviesListFavoritesAtom =
      Atom(name: '_HomeControllerBase.moviesListFavorites');

  @override
  ObservableList<MovieItemModel> get moviesListFavorites {
    _$moviesListFavoritesAtom.reportRead();
    return super.moviesListFavorites;
  }

  @override
  set moviesListFavorites(ObservableList<MovieItemModel> value) {
    _$moviesListFavoritesAtom.reportWrite(value, super.moviesListFavorites, () {
      super.moviesListFavorites = value;
    });
  }

  final _$moviesListAtom = Atom(name: '_HomeControllerBase.moviesList');

  @override
  ObservableList<MovieItemModel> get moviesList {
    _$moviesListAtom.reportRead();
    return super.moviesList;
  }

  @override
  set moviesList(ObservableList<MovieItemModel> value) {
    _$moviesListAtom.reportWrite(value, super.moviesList, () {
      super.moviesList = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$getFavoriteMoviesLSAsyncAction =
      AsyncAction('_HomeControllerBase.getFavoriteMoviesLS');

  @override
  Future<void> getFavoriteMoviesLS() {
    return _$getFavoriteMoviesLSAsyncAction
        .run(() => super.getFavoriteMoviesLS());
  }

  final _$removeFavoriteAsyncAction =
      AsyncAction('_HomeControllerBase.removeFavorite');

  @override
  Future<void> removeFavorite(MovieItemModel movie) {
    return _$removeFavoriteAsyncAction.run(() => super.removeFavorite(movie));
  }

  final _$getMoviesListAsyncAction =
      AsyncAction('_HomeControllerBase.getMoviesList');

  @override
  Future<void> getMoviesList() {
    return _$getMoviesListAsyncAction.run(() => super.getMoviesList());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void addFavorite(MovieItemModel movie) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addFavorite');
    try {
      return super.addFavorite(movie);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
moviesListFavorites: ${moviesListFavorites},
moviesList: ${moviesList},
loading: ${loading}
    ''';
  }
}
