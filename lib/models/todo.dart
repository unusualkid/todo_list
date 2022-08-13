import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Todo> fetchTodo() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));

  if (response.statusCode == 200) {
    return Todo.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load todo');
  }
}

class Todo {
  final String title;
  bool completed;

  Todo({
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      completed: json['completed'],
    );
  }
}
