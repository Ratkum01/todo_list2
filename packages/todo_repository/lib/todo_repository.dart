import 'package:todo_models/todo_models.dart';
import 'package:todo_services/data_models/dbtodo.dart';
import 'package:todo_services/database.dart';

class TodoRepository{
  Future<void>addTodo(TodoModel todo)async{
  await DBProvider.db.addTodo(DBTodo(
    id: todo.id,
    title: todo.title,
    description: todo.description,
  ));
  }
}
