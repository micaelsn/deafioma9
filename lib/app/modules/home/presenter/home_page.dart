import 'package:desafioma9/app/shared/components/loading/loading_component.dart';
import 'package:desafioma9/app/shared/components/movie_itens/movie_item.dart';
import 'package:desafioma9/app/shared/components/movie_itens/movie_item_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    controller.getMoviesList();
    controller.getFavoriteMoviesLS();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(".｡oO LISTA DE FILMES ( ♡ )Oo｡"),
      ),
      body:Column(
        children: [
          Observer(
            builder: (_) => controller.moviesListFavorites.length > 0 ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Text(
                    "❀ *｡ʚɞ⋆ FAVORITOS ₍⑅ᐢ.ˬ.ᐢ₎♡ஐ",
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                            physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.moviesListFavorites.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return new MovieItemHorizontalComponent(
                        movieItem: controller.moviesListFavorites[index],
                        onPressed: () {
                          controller.removeFavorite(controller.moviesListFavorites[index]);
                        },
                      );
                    }
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "máximo: 3 filmes♡ஐ",
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.purple
                    ),
                  ),
                ),
              ]
            ) : Container()
          ),
          SizedBox(height: 10),
          Observer(
            builder: (_) => controller.loading ? Loading()
              :
            Expanded(
               child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          child:  ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemCount: controller.moviesList.length ?? 0,
                              itemBuilder: (BuildContext context, int index) {
                                return new MovieItemComponent(
                                  movieItem: controller.moviesList[index],
                                  onPressed: (){
                                    controller.addFavorite(controller.moviesList[index]);
                                  },
                                );
                            }
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}
