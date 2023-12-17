import 'package:flutter/material.dart';
import 'package:slicing_poinku/core.dart';
import '../controller/i-kupon_controller.dart';

class IKuponView extends StatefulWidget {
  const IKuponView({Key? key}) : super(key: key);

  Widget build(context, IKuponController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("IKupon"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<IKuponView> createState() => IKuponController();
}
