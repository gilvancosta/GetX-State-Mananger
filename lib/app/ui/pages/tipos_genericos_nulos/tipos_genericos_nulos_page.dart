import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposGenericosNulosPage extends StatefulWidget {
  const TiposGenericosNulosPage({super.key});

  @override
  State<TiposGenericosNulosPage> createState() => _TiposGenericosNulosPageState();
}

class _TiposGenericosNulosPageState extends State<TiposGenericosNulosPage> {
  final name = Rxn<String>('Gilvan Costa');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Genericos Nulos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text(
                  'Nome: ${name.value ?? 'Sem Nome'}',
                )),
          ],
        ),
      ),
    );
  }
}
