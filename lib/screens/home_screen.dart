import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_task_7_cat/constants.dart';
import 'package:news_app_task_7_cat/model/news.dart';
import 'package:news_app_task_7_cat/services/news_service.dart';
import 'package:news_app_task_7_cat/widgets/news_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool loading = true;
List<News> news =[];

// getNewsList() async {
//   news = await NewsApiService().getNews();
//   setState(() {
//     loading = false;
//   });
// }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    //loading = false;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Walk With Trend',
                  style: kWalkWithTrendStyle,
                ),
                Text(
                  'Don\'t stay behind, read the trend',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'Top reads of the day',
                    style: kWalkWithTrendStyle,
                  ),
                ),
                Expanded(
                  child: FutureBuilder(
                    future: NewsApiService().getNews(),
                    builder:(context,snapShot){
                      if (snapShot.data != null) {
                        news = snapShot.data;
                        return ListView.separated(
                          itemBuilder: (context, index) {
                             return NewsItem(item: news[index],);

                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 20,);
                          },
                          itemCount: 10,
                        );}
                      else return Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

