import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Favorite.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Favorite controller = Get.put(Favorite());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite App',
      home: Scaffold(
        appBar: AppBar(title: Text('Favorite Toggel')),
        backgroundColor: Colors.white,
        body: Center(
          child: Obx(() => IconButton(
            icon: Icon(
              controller.isFavorite.value
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
              size: 48,
            ),
            onPressed: controller.toggleFavorite,
          )),
        ),
      ),
    );
  }
}

