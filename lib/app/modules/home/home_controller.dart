import 'package:desafioma9/app/shared/db/db_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data/model/movie_item.dart';
import 'domain/entities/movie_item_model.dart';
import 'domain/usecase/get_list_movies_usecase.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final ControllerDB controllerDB = ControllerDB();
  
  GetListMoviesUseCase getListMoviesUseCase;

  _HomeControllerBase(this.getListMoviesUseCase);

  @observable
  var moviesListFavorites = ObservableList<MovieItemModel>();

  @observable
  var moviesList = ObservableList<MovieItemModel>();

  @observable
  bool loading = false;

  @action
  void addFavorite(MovieItemModel movie){
    var contain = moviesListFavorites.where((e) => e.title == movie.title);
    
    if(contain.isEmpty && moviesListFavorites.length < 3){
      moviesListFavorites.add(movie);
      controllerDB.saveMovie(movie);
    }
  }

  @action
  Future<void> getFavoriteMoviesLS() async {
    var res = await controllerDB.selectMovies();
    if(res != null){
      for(var item in res){
        moviesListFavorites.add(MovieItem.fromMap(item));
      }
    }
    
  }

  @action
  Future<void> removeFavorite(MovieItemModel movie) async {
    controllerDB.deleteTableMovie(movie);
    moviesListFavorites.remove(movie);
  }

  @action
  Future<void> getMoviesList() async {
    this.loading = true;
    var result = await getListMoviesUseCase.getListMovies();
    result.fold((l) => print(l), (r) => moviesList.addAll(r));
    this.loading = false;
  }

}
