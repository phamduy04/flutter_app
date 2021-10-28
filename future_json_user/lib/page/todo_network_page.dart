import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_json_user/models/todo.dart';
import 'package:future_json_user/services/service.dart';
import 'package:http/http.dart' as http;

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder(
          future: fetchToDo(http.Client()),
          builder: (context, AsyncSnapshot snapshot) {
            final todos = snapshot.data;
            if (snapshot.hasError) {
              return Center(
                child: Text('Error data'),
              );
            } else if (snapshot.hasData) {
              return buildToDo(todos, size);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Widget buildToDo(List<ToDo> todos, Size size) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            leading: Icon(
              Icons.note_alt_outlined,
              size: 30,
            ),
            title: SizedBox(width: size.width * 0.7, child: Text(todo.title)),
            trailing: todo.completed
                ? Icon(
                    Icons.check_box,
                    color: Colors.green,
                    size: 30,
                  )
                : Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 30,
                  ),
          );
        });
  }
}
