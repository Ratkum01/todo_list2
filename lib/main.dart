import 'package:flutter/material.dart';
import 'package:todo_list2/home_screen.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super (key: key);

  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
        //home: const HomeScreen()
      home: HomeScreen()
    );
  }
}