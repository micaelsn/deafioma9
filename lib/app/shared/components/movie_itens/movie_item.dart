import 'package:flutter/material.dart';

import '../../../modules/home/domain/entities/movie_item_model.dart';

class MovieItemComponent extends StatelessWidget {
   
  MovieItemModel movieItem;
  Function onPressed;

  MovieItemComponent({this.movieItem, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: 120,
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                image: movieItem.poster,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieItem.title,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black
                  ),
                ),
                SizedBox(height:5),
                Text(
                  movieItem.genre,
                  style: TextStyle(
                    color: Colors.grey[600]
                  ),
                ),
                SizedBox(height:5),
                Text(
                  movieItem.synopsis,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                SizedBox(height:5),
                Text(
                  movieItem.date,
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ],
            )
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 25,
              color: Colors.purpleAccent,
            ), 
            onPressed: (){
              this.onPressed();
            }
          )
        ],
      ),
    );
  }
}