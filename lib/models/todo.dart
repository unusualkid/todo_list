import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Todo> fetchTodo() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/3'));

  if (response.statusCode == 200) {
    return Todo.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load todo');
  }
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
