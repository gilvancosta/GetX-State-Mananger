import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reatividade/reatividade_page.dart';
import '../tipos/tipos_reativos_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const ReatividadePage());
                },
                child: const Text('Exemp. Reatividade')),
                const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const TiposReativosPage());
                },
                child: const Text('Tipos Reativos')),


          ],
        ),
      ),
    );
  }
}
