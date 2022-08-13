// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../screens/home_page.dart';
import '../theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String title = "Todo list";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title, theme: AppTheme.lightTheme, home: HomePage());
  }
}
