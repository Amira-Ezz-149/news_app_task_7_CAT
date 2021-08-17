import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsItemImage extends StatelessWidget {
const NewsItemImage({this.height, this.urlToImage});
final double height;
final String urlToImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width:MediaQuery.of(context).size.width / 3.5 ,
    //  height: 120,
      height: height,
      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: urlToImage == null? NetworkImage('https://i.morioh.com/2020/02/28/1195ab76f0b1.jpg') : NetworkImage('$urlToImage'),

          )
      ),
    );
  }
}
