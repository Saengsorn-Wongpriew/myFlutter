import 'package:flutter/material.dart';
import 'package:app_screening/app_screens/my_name/my_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Flutter!',
        home: MyName(),
    );
  }
}
