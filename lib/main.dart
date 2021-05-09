import 'package:flutter/material.dart';
import 'package:watch_this/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:'WatchThis',
      theme: ThemeData(),
      home: DetailScreen(
      ),
    );
  }
}

