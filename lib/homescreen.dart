import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            icon: Icon(Get.isDarkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
              setState(() {});
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(title: Text('message'.tr), subtitle: Text('name'.tr)),
            SizedBox(height: Get.height * 0.2),
            TextButton(
              onPressed: () {
                Get.updateLocale(Locale('ur', 'PK'));
              },
              child: Text('Urdu'),
            ),
            SizedBox(width: Get.width * 0.02),
            TextButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text('English'),
            ),
          ],
        ),
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
