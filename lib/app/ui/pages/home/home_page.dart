import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reatividade/reatividade_page.dart';
import '../tipos/tipos_reativos_page.dart';
import '../tipos_genericos/tipos_reativos_genericos_page.dart';
import '../tipos_genericos_nulos/tipos_genericos_nulos_page.dart';
import '../tipos_obs/tipos_obs_page.dart';
import '../tipos_update/tipos_update.page.dart';

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
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const TiposReativosGenericosPage());
                },
                child: const Text('Tipos Reativos Genericos')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const TiposGenericosNulosPage());
                },
                child: const Text('Tipos Genericos Nulos')),

            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const TiposObsPage());
                },
                child: const Text('Tipos OBS')),

            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const TiposUpdatePage());
                },
                child: const Text('Tipos Update')),

          ],
        ),
      ),
    );
  }
}
