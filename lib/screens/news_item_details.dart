import 'package:flutter/material.dart';
import 'package:news_app_task_7_cat/constants.dart';
import 'package:news_app_task_7_cat/model/news.dart';
import 'package:news_app_task_7_cat/widgets/news_item_image.dart';

class NewsItemDetails extends StatelessWidget {
final News item ;
const NewsItemDetails({this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
      ),
      body: ListView(
        children: [
        NewsItemImage(
          urlToImage: item.urlToImage,
          height: MediaQuery.of(context).size.height /2,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),

              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${item.title},', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),overflow:TextOverflow.ellipsis, maxLines: 2,),
                 SizedBox(height: 5.0,),
                  Text('Author : ${item.author}', style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text('${item.description}', style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text('${item.publishedAt}', style: kTextTimeStyle,)),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
