

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

import 'main.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String text = "STOP SERVICE";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await initializeService();
                  FlutterBackgroundService().invoke('setAsForeground');
                },
                child: const Text("SCHEDULE TASK")),
            ElevatedButton(
                onPressed: () async {
                  final service = FlutterBackgroundService();
                  bool isRunning = await service.isRunning();
                  if (isRunning) {
                    service.invoke('stopService');
                  } else {
                    service.startService();
                  }
                  if (!isRunning) {
                    text = "STOP SERVICE";
                  } else {
                    text = "START SERVICE";
                  }
                  setState(() {

                  });
                },
                child: Text("$text")),
          ],
        ),
      ),
    );
  }
}
