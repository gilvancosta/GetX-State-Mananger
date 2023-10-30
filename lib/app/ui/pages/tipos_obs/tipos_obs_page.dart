import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposObsPage extends StatefulWidget {
  const TiposObsPage({super.key});

  @override
  State<TiposObsPage> createState() => _TiposObsPageState();
}

class _TiposObsPageState extends State<TiposObsPage> {
  final name = 'Gilvan Araújo'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos OBS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Name: ${name.value}')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  name.value = 'Gilvan Costa';
                },
                child: const Text('Alterar Nome')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  name.value = 'Gilvan Costa 2';
                },
                child: const Text('Alterar Nome')),
          ],
        ),
      ),
    );
  }
}
