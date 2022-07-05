import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list2/create_todo/create_todo.dart';


class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
        await Navigator.push(
          context,
           MaterialPageRoute(builder: (context) => CreateTodo()));
      } , 
      child: Icon(Icons.create) ,),
    );
  }
}