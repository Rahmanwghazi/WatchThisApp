import 'package:flutter/material.dart';
import 'package:watch_this/model/reviews.dart';

class DetailScreen extends StatelessWidget {
  final ReviewSeries review;
 
  DetailScreen({@required this.review});
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(review : review);
        } else {
          return DetailMobilePage(review : review);
        }
      },
    );
  }
}


class DetailMobilePage extends StatelessWidget {
  final ReviewSeries review;
  
  const DetailMobilePage({@required this.review});
 
  @override
  Widget build(BuildContext context) {
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


class DetailWebPage extends StatelessWidget {
  final ReviewSeries review;
  
  const DetailWebPage({@required this.review});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
      
      child: Center(
        child: Container(
          width: 1200,
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WatchThis',
           style: TextStyle(
             fontSize: 32,
             fontWeight: FontWeight.bold,
             fontFamily: 'Anton',
           ),
        ),
        SizedBox(height: 32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                 height:700,
                 child:  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(review.imageAsset, fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    elevation: 5,
                ),
               ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 150,
                    padding: const EdgeInsets.only(bottom: 16),
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
                    ),
                  ),
                ],
              ),
              )
              
            ),
            SizedBox(width: 32),
            Expanded(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
            Container(
              
             margin: EdgeInsets.all(10.0),
             child: Card(
                 semanticContainer: true,
                 color: Colors.white,
                 clipBehavior: Clip.antiAliasWithSaveLayer,
                 child: (
                   Column(
                     
                  children:[
                    SizedBox(height: 32),
                    
                    Text(
                      
                        review.title, 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          
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
                        )
                      ),WhiteListButton(),
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
              margin: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text('Synopsis:', textAlign:TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text( review.synopsis, textAlign:TextAlign.center),
                ]
              ) 
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text('Stars:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(review.stars, textAlign:TextAlign.center),
                ]
              ) 
            ),
                  ] 
                )
                   
                 ),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                 elevation: 2,
               ),
             
             

           ),
          
            
            

                ],
              ) 
               
            ),
          ],
        ),
      ] ,
    ),
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
        color: Colors.grey,
      ),
      onPressed: (){
        setState((){
          isWhiteList = !isWhiteList;
        });
      },
    );
  }
}