import 'package:flutter/material.dart';
import 'counter_screen.dart';

void main() {
  runApp(MyApp());
}

/// The root widget of the application.
///
/// [MyApp] sets up the overall structure of the app, including the theme,
/// and provides the [CounterScreen] as the initial screen.

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Counter',
      theme: ThemeData(
        // Sets a default purple theme for the app
        primarySwatch: Colors.purple, 
      ),
      // The initial screen displayed when the app starts
      home: CounterScreen(),
    );
  }
}
