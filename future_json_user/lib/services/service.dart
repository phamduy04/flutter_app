import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:future_json_user/models/todo.dart';
import 'package:future_json_user/models/user.dart';
import 'package:http/http.dart' as http;

// users/
List<Users> parseUsers(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Users> users = list.map((model) => Users.fromJson(model)).toList();
  return users;
}

Future<List<Users>> fetchUser(http.Client client) async {
  final url = 'http://jsonplaceholder.typicode.com/users';
  final response = await client.get(Uri.parse(url));
  return compute(parseUsers, response.body);
}

List<ToDo> parseToDO(String responseBody) {
  var listToDo = json.decode(responseBody) as List<dynamic>;
  List<ToDo> todos = listToDo.map((json) => ToDo.fromJson(json)).toList();
  return todos;
}

Future<List<ToDo>> fetchToDo(http.Client client) async {
  final url = 'http://jsonplaceholder.typicode.com/todos';
  final response = await client.get(Uri.parse(url));
  return compute(parseToDO, response.body);
}
