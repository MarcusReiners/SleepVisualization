import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

import 'main.dart';

/// A Flutter widget representing the home page of the application.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

/// The state for the [HomePage] widget.
class _HomePageState extends State<HomePage> {
  /// The text to display on the "START SERVICE" or "STOP SERVICE" button.
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
