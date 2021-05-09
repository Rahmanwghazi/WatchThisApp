import 'package:flutter/material.dart';
import 'package:watch_this/model/reviews.dart';

class DetailScreen extends StatelessWidget{
  final ReviewSeries review;

  DetailScreen({@required this.review});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(review.imageAsset),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                review.title, 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(review.year),
                  Text(' • '),
                  Text(review.genre),
                  Text(' • '),
                  Text(review.episodes)
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                      ),
                      SizedBox(height: 8.0),
                      Text(review.rating)
                    ]
                  ),
                  Column(
                    children:[
                      Icon(
                        Icons.arrow_circle_up_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(height: 8.0),
                      Text(review.popularity)
                    ]
                  ),
                  Column(
                    children:[
                      Icon(
                        Icons.language,
                        color: Colors.black,
                      ),
                      SizedBox(height: 8.0),
                      Text(review.language)
                    ]
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Synopsis:', textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text( review.synopsis, textAlign:TextAlign.center),
                ]
              ) 
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Stars:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(review.stars, textAlign:TextAlign.center),
                ]
              ) 
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: review.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
                
              )
            )
          ],
         ),
       )
      )
    );
  }
}