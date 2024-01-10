import 'package:flutter/material.dart';
import 'package:flutter_web_project2/controllers/counterControllers.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen was clicked ${_counterController.couter.value} times"),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Open Other Screen ")),
            )
          ],
        ),
      ),
    );
  }
}
