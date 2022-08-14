import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Todo>> fetchTodos() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos?userId=1'));

  if (response.statusCode == 200) {
    List<dynamic> parsedListJson = jsonDecode(response.body);
    List<Todo> itemsList =
        List<Todo>.from(parsedListJson.map((i) => Todo.fromJson(i)));
    return List.from(itemsList.reversed);
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
