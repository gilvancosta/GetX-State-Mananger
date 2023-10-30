import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entities/aluno/student.dart';

class TiposReativosGenericosPage extends StatefulWidget {
  const TiposReativosGenericosPage({super.key});

  @override
  State<TiposReativosGenericosPage> createState() => _TiposReativosGenericosPageState();
}

class _TiposReativosGenericosPageState extends State<TiposReativosGenericosPage> {
  final aluno = Rx<Map<String, dynamic>>({
    'id': 2023,
    'name': 'Gilvan Costa',
    'age': 36,
  });

  final studentEntity = Rx<StudentEntity>(StudentEntity(
    id: 2023,
    name: 'Gilvan Costa',
    age: 36,
    curso: 'Sistemas de Informação',
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos Genericos Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Column(
                  children: [
                    Text('id: ${aluno.value['id']}'),
                    Text('name: ${aluno.value['name']}'),
                    Text('age: ${aluno.value['age']}'),
                  ],
                )),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Obx(() => Column(
                  children: [
                    Text('id: ${studentEntity.value.id}'),
                    Text('name: ${studentEntity.value.name}'),
                    Text('age: ${studentEntity.value.age}'),
                    Text('curso: ${studentEntity.value.curso}'),
                  ],
                )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  aluno.value['id'] = 2024;
                  aluno.value['name'] = 'Gilvan Costa 2';
                  aluno.value['age'] = 37;

                  aluno.refresh();
                },
                child: const Text('Alterar Map Aluno')),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  studentEntity.value.id = 2025;
                  studentEntity.value.name = 'Gilvan Araújo';
                  studentEntity.value.age = 52;
                  studentEntity.value.curso = 'Expecialista em Flutter';
                  studentEntity.refresh();
                },
                child: const Text('Alterar Map Student')),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
/*                   studentEntity.value = StudentEntity(
                    id: 2027,
                    name: 'Gilvan Araújo 2',
                    age: 55,
                    curso: 'Expecialista em Flutter 2',
                  );  */
                  // usando callable classes
                  studentEntity(StudentEntity(
                    id: 2027,
                    name: 'Gilvan Araújo 2',
                    age: 55,
                    curso: 'Expecialista em Flutter 2',
                  ));

                  // studentEntity.refresh();
                },
                child: const Text('Alterar Map Student 2')),
          ],
        ),
      ),
    );
  }
}
