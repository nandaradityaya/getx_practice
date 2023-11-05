import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllers/orang_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final orangC = Get.put(OrangController()); // ambil controller orang
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('GetX Practice')),
          body: Center(
            child: Obx(() => Text(
                  "Nama saya ${orangC.orang.value.nama}", // ambil value dari controller orang
                  style: const TextStyle(fontSize: 35),
                )),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              orangC
                  .changeUpperCase(); // panggil method changeUpperCase dari controller orang
            },
            child: const Icon(Icons.add),
          )),
    );
  }
}
