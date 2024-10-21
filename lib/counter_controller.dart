import 'package:flutter/material.dart';

/// The state management class for the counter application.
///
/// [CounterController] extends [ChangeNotifier] and manages the state of the counter value.
/// It exposes methods to increment and decrement the counter, as well as a method
/// to determine the color based on the current counter value.

class CounterController with ChangeNotifier {
  int _counter = 0;

  /// Getter to expose the current counter value.
  int get counter => _counter;

  /// Increments the counter value by 1 and notifies listeners to rebuild the UI.
  void increment() {
    _counter++;
    // Notify any listening widgets to rebuild with new state
    notifyListeners(); 
  }

  /// Decrements the counter value by 1 and notifies listeners to rebuild the UI.
  void decrement() {
    _counter--;
    // Notify any listening widgets to rebuild with new state
    notifyListeners(); 
  }

  /// Returns a [Color] based on the current counter value.
  Color getCounterColor() {
    if (_counter < 0) {
      return Colors.red;
    } else if (_counter == 0) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }
}
