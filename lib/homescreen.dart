import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Practice'), centerTitle: true),
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.snackbar('Message', 'This is snackbar');
            },
          ),
        ],
      ),
    );
  }
}
