import 'package:flutter/material.dart';

import '../../../modules/home/domain/entities/movie_item_model.dart';

class MovieItemHorizontalComponent extends StatelessWidget {
   
  MovieItemModel movieItem;
  Function onPressed;

  MovieItemHorizontalComponent({this.movieItem, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 100,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: movieItem.poster,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.favorite,
              size: 25,
              color: Colors.purpleAccent,
            ), 
            onTap: (){
              this.onPressed();
            }
          )
        ],
      ),
    );
  }
}