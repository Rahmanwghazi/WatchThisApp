
import 'package:flutter/material.dart';
import 'package:watch_this/detail_screen.dart';
import 'package:watch_this/model/reviews.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WatchThis',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
             fontFamily: 'Anton',
            fontSize: 30,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth <= 700){
            return ReviewSeriesList();
          }else if (constraints.maxWidth <= 1200){
            return ReviewSeriesGrid(gridCount: 2);
          }else{
            return ReviewSeriesGrid(gridCount: 4);
          }
        },
      )
       );
  }
}

class ReviewSeriesList  extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return ListView.builder(
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

    );

  }
}

class ReviewSeriesGrid extends StatelessWidget {
  final int gridCount;
 
  ReviewSeriesGrid({@required this.gridCount});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        children: reviewSeriesList.map((review) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(review: review);
              }));
            }, 
           child: SingleChildScrollView(
             child:  Column(
             children: [
               Container(
                 height:400,
                 child:  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(review.imageAsset, fit: BoxFit.fill),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    elevation: 10,
                ),
               ),
               Container(
                 child:  Column(
                   children: [
                     SizedBox(height:8.0),
                     Text(review.title, 
                     style: TextStyle(
                       fontWeight:FontWeight.bold,
                       fontSize: 20)
                     ),
                     Text(review.year)
                   ]
                 ) ,
                 
                 
               ),
             ],
           ),
           )
          );
        }).toList(),
      ),
    );
  }
}

   
