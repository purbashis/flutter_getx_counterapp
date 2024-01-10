import 'package:flutter/material.dart';
import 'package:flutter_web_project2/controllers/counterControllers.dart';
import 'package:flutter_web_project2/pages/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() =>  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Clicks : ${counterController.couter.value}")),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: const Text("Open Other Screen ")),
          )
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
