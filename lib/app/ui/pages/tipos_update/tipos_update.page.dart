import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/user/user_entity.dart';

class TiposUpdatePage extends StatefulWidget {
  const TiposUpdatePage({super.key});

  @override
  State<TiposUpdatePage> createState() => _TiposUpdatePageState();
}

class _TiposUpdatePageState extends State<TiposUpdatePage> {
  
  final userEntity = UserEntity(
    id: 1,
    name: 'Gilvan Costa',
    age: 36,
  ).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tipos Update page'),
        ),
        body: Center(
          child: Column(children: [
            Obx(() {
              return Text('Name: ${userEntity.value.name}');
            }),
            const SizedBox(height: 20),
            Obx(() => Text('Age: ${userEntity.value.age}')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  userEntity.value = userEntity.value.copyWith(name: 'Gilvan Costa 33');
                },
                child: const Text('Alterar com copy with')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  userEntity.update((user) {
                    user?.name = 'Gilvan Costa 44';
                  });
                },
                child: const Text('Alterar com update')),
          ]),
        ));
  }
}
