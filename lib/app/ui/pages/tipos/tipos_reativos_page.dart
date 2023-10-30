import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatefulWidget {
  const TiposReativosPage({super.key});

  @override
  State<TiposReativosPage> createState() => _TiposReativosPageState();
}

class _TiposReativosPageState extends State<TiposReativosPage> {
  final name = RxString('Gilvan Costa');
  final age = RxInt(0);
  final height = RxDouble(0.0);
  final isAlive = RxBool(false);
  final list = RxList<String>([]);
  final aluno = RxMap<String, dynamic>({
    'id': 2023,
    'name': 'Gilvan Costa',
    'age': 36,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tipos Reativos Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(() => Column(
                    children: [
                      Text('id: ${aluno['id']}'),
                      Text('name: ${aluno['name']}'),
                      Text('age: ${aluno['age']}'),
                    ],
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    aluno['id'] = 2024;
                    aluno['name'] = 'Gilvan Costa 2';
                    aluno['age'] = 37;
                  },
                  child: const Text('Alterar Map')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
