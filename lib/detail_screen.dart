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
            Stack(
              children: <Widget>[
                Image.asset(review.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        WhiteListButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           Container(
             margin: EdgeInsets.all(10.0),
             child: Column(
               children:[
                 Text(
                    review.title, 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
               ] 
             ),

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
              height: 70.0,
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      SizedBox(height: 8.0),
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
                      SizedBox(height: 8.0),
                      Icon(
                        Icons.arrow_circle_up_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(height: 8.0),
                      Text(review.popularity),
                    ]
                  ),
                  Column(
                    children:[
                      SizedBox(height: 8.0),
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

class WhiteListButton extends StatefulWidget{
  @override
  _WhiteListButtonState createState() => _WhiteListButtonState();
}

class _WhiteListButtonState extends State <WhiteListButton>{
  bool isWhiteList = false;
  @override 
  Widget build(BuildContext context){
    return IconButton(
      icon: Icon(
        isWhiteList ? Icons.fact_check_rounded : Icons.fact_check_outlined,
        color: Colors.white,
      ),
      onPressed: (){
        setState((){
          isWhiteList = !isWhiteList;
        });
      },
    );
  }
}