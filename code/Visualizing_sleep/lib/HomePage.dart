import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

import 'main.dart';

/// A Flutter widget representing the home page of the application.
///
/// The HomePage allows the user to interact with the background service
/// by providing two buttons to schedule a task and to start/stop the background service.
///
/// [HomePage] extends [StatefulWidget] which means it maintains a mutable state
/// that can be updated over time based on user interaction or other events.
class HomePage extends StatefulWidget {
  /// Constructs a HomePage.
  ///
  /// Takes a [Key] as an argument which can be used to reference this widget
  /// in the widget tree. This argument is forwarded to the superclass constructor.
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

/// The state for the [HomePage] widget.
///
/// Contains logic for initializing the background service, toggling the service
/// on and off, and updating the UI based on the service state.
class _HomePageState extends State<HomePage> {
  /// The text to display on the "START SERVICE" or "STOP SERVICE" button.
  /// It's initially set to "STOP SERVICE".
  String text = "STOP SERVICE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Initialize the background service and set it as foreground.
                await initializeService();
                FlutterBackgroundService().invoke('setAsForeground');
              },
              child: const Text("SCHEDULE TASK"),
            ),
            ElevatedButton(
              onPressed: () async {
                final service = FlutterBackgroundService();
                bool isRunning = await service.isRunning();

                // Toggle the background service based on its current state.
                if (isRunning) {
                  service.invoke('stopService');
                } else {
                  service.startService();
                }

                // Update the button text based on the service state.
                if (!isRunning) {
                  text = "STOP SERVICE";
                } else {
                  text = "START SERVICE";
                }

                // Update the UI.
                setState(() {});
              },
              child: Text("$text"),
            ),
          ],
        ),
      ),
    );
  }
}
