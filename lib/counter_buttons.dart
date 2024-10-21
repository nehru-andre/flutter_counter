import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_controller.dart';

/// A stateless widget that displays two floating action buttons
/// for incrementing and decrementing the counter.

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the instance of CounterController from the provider without listening for changes
    final counterController = Provider.of<CounterController>(context, listen: false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space buttons evenly in the row
      children: [
        FloatingActionButton(
          onPressed: counterController.decrement, // Call the decrement function from the controller
          tooltip: 'Decrement',
          backgroundColor: Colors.red,
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: counterController.increment, // Call the increment function from the controller
          tooltip: 'Increment',
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
