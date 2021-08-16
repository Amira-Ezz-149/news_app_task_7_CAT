import 'package:flutter/material.dart';
import 'package:news_app_task_7_cat/constants.dart';
import 'package:news_app_task_7_cat/model/news.dart';
import 'package:news_app_task_7_cat/screens/news_item_details.dart';

class NewsItem extends StatelessWidget {
  final News item;
  NewsItem({this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsItemDetails(
                      item: item,
                    ),),);
      },
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            //  height: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: item.urlToImage == null
                    ? NetworkImage(
                        'https://i.morioh.com/2020/02/28/1195ab76f0b1.jpg')
                    : NetworkImage('${item.urlToImage}'),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  item.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '30 mins most',
                      style: kTimeStyle,
                    ),
                    Text(
                      '30 mins most',
                      style: kTimeStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
