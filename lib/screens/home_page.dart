import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tous Doux List"),
      ),
      body: const Center(
        child: Text('Pick up kids from school!!'),
      ),
    );
  }
}
