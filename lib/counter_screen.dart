import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_controller.dart';
import 'counter_display.dart';
import 'counter_buttons.dart';


/// [CounterScreen] uses the [ChangeNotifierProvider] to provide the [CounterController]
/// to all its child widgets, enabling state management across the screen.

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Creates and provides an instance of CounterController to manage state
      create: (_) => CounterController(),
      child: Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                // Creates a gradient background from purple to blue
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            title: const Text('Flutter Counter'),
            centerTitle: true,
          ),
        ),

        /// The body of the app contains the counter value display and action buttons.
        body: Center(
          child: Column(
            // Centers the column vertically
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              const Text(
                'Counter Value:',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              CounterDisplay(),
              const SizedBox(height: 30),
              CounterButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
