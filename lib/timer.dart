import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PredictionApp(),
    );
  }
}

class PredictionApp extends StatefulWidget {
  const PredictionApp({super.key});

  @override
  _PredictionAppState createState() => _PredictionAppState();
}

class _PredictionAppState extends State<PredictionApp> {
  final List<Map<String, dynamic>> predictionsList = [];
  late Timer timer;
  int periodNumber = 20250119100050826;

  @override
  void initState() {
    super.initState();
    startPredictionTimer();
  }

  void startPredictionTimer() {
    timer = Timer.periodic(Duration(seconds: 30), (Timer t) {
      addPrediction();
    });
  }

  void addPrediction() {
    final random = Random();
    final now = DateTime.now();
    final futureTime = now.add(Duration(seconds: 15));
    final prediction = random.nextBool() ? "BIG" : "SMALL";

    setState(() {
      periodNumber += 1; // Increment the period number every 30 seconds
      predictionsList.add({
        "period": periodNumber,
        "time": futureTime,
        "prediction": prediction,
      });
      // Sort by future time in descending order
      predictionsList.sort((a, b) => b["time"].compareTo(a["time"]));
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Time Predictions"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: predictionsList.length,
              itemBuilder: (context, index) {
                final item = predictionsList[index];
                return ListTile(
                  title: Text(
                    "Period: ${item['period']} | Prediction: ${item['prediction']} | Time: ${item['time'].hour}:${item['time'].minute}:${item['time'].second}",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
