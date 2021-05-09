
import 'package:flutter/material.dart';
import 'package:watch_this/detail_screen.dart';
import 'package:watch_this/model/reviews.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WatchThis', 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.only(right:15),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),)
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final ReviewSeries review = reviewSeriesList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(review: review);
              }));
            }, 
           child: Column(
             children: [
               Container(
                 height:450,
                 child:  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(review.imageAsset, fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    elevation: 10,
                    margin: EdgeInsets.only(left: 10, top: 20),
                ),
               ),
               Container(
                 child: Column(
                   children: [
                     SizedBox(height:8.0),
                     Text(review.title, 
                     style: TextStyle(
                       fontWeight:FontWeight.bold,
                       fontSize: 20)
                     ),
                     Text(review.year)
                   ]
                 )
               )
             ],
           )
          );
        },
        itemCount: reviewSeriesList.length,
      ),
    );
  }
}