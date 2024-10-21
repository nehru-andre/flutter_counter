import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_controller.dart';

/// A stateless widget that displays the current counter value
/// in a visually appealing container.

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the instance of CounterController from the provider
    final counterController = Provider.of<CounterController>(context);

    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15, // Blur effect of the shadow
            offset: Offset(0, 8), // Offset for shadow position
          ),
        ],
      ),
      child: Text(
        '${counterController.counter}',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold,
          color: counterController.getCounterColor(), // Dynamic color based on counter value
        ),
      ),
    );
  }
}
