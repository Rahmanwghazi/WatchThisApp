import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/GFN2.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Girl From Nowhere', 
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
                  Text('2021'),
                  Text(' • '),
                  Text('Mystery, Thriller'),
                  Text(' • '),
                  Text('8 Episodes')
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
                      Text('8.0/10')
                    ]
                  ),
                  Column(
                    children:[
                      Icon(
                        Icons.arrow_circle_up_rounded,
                        color: Colors.green,
                      ),
                      SizedBox(height: 8.0),
                      Text('682')
                    ]
                  ),
                  Column(
                    children:[
                      Icon(
                        Icons.language,
                        color: Colors.black,
                      ),
                      SizedBox(height: 8.0),
                      Text('Thai')
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
                  Text( 'A mysterious, clever girl named Nanno transfers to different schools, exposing the lies and misdeeds of the students and faculty at every turn. This time, she returned to expose the lies and hypocrisy that occurred at the high school where he attended school. Not only that, Nanno also came to deal directly with the students who had been the source of problems at his school.', textAlign:TextAlign.center),
                ]
              ) 
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Stars:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Chicha Amatayakul, James Teeradon, Tai Penpak Sirikul, Paricia Tancanok, Nink', textAlign:TextAlign.center),
                ]
              ) 
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:  Image.network('https://i.ytimg.com/vi/VjqKNRlDcpA/maxresdefault.jpg'),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('http://images.summitmedia-digital.com/cosmo/images/2021/04/19/girl-from-nowhere-season-2-1618803870.jpg'),
                    )                  
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child:  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Image.network('https://akcdn.detik.net.id/visual/2021/04/19/serial-girl-from-nowhere-2-2_169.jpeg?w=650'),
                    )
                  )
                ]
              )
            )
          ],
         ),
       )
      )
    );
  }
}