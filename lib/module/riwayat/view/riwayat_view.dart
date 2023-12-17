import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../controller/riwayat_controller.dart';

class RiwayatView extends StatefulWidget {
  const RiwayatView({Key? key}) : super(key: key);

  Widget build(context, RiwayatController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riwayat"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              Text("text"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RiwayatView> createState() => RiwayatController();
}
