import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReatividadePage extends StatefulWidget {
  const ReatividadePage({super.key});

  @override
  State<ReatividadePage> createState() => _ReatividadePageState();
}

class _ReatividadePageState extends State<ReatividadePage> {
  final _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reatividade Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Counter'),

              Obx(() => Text('${_counter.value}', style: const TextStyle(fontSize: 30))),
              //    Text('${_counter.value}', style: const TextStyle(fontSize: 30)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _counter.value++;
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
