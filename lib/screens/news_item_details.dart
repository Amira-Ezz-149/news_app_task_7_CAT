import 'package:flutter/material.dart';
import 'package:news_app_task_7_cat/model/news.dart';
import 'package:news_app_task_7_cat/widgets/news_item_image.dart';

class NewsItemDetails extends StatelessWidget {
final News item ;
const NewsItemDetails({this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
        NewsItemImage(
          urlToImage: item.urlToImage,
          height: MediaQuery.of(context).size.height /2,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('${item.description}', style: TextStyle(fontSize: 18),),
          )
        ],
      ),
    );
  }
}
