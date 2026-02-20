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
      appBar: AppBar(
        title: Text('GetX Practice'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Get.isDarkMode ? Icons.light_mode : Icons.dark_mode_outlined,
            ),
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
              setState(() {});
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Dialogue'),
            onTap: () {
              Get.defaultDialog(
                title: 'Title',
                cancel: TextButton(onPressed: () {}, child: Text('Cancel')),
                confirm: TextButton(onPressed: () {}, child: Text('Confirm')),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.snackbar('Message', 'This is snackbar');
        },
      ),
    );
  }
}
