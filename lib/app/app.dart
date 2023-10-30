import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/home/home_page.dart';
import 'ui/pages/reatividade/reatividade_page.dart';
import 'ui/pages/tipos/tipos_reativos_page.dart';
import 'ui/pages/tipos_genericos/tipos_reativos_genericos_page.dart';
import 'ui/pages/tipos_genericos_nulos/tipos_genericos_nulos_page.dart';
import 'ui/pages/tipos_obs/tipos_obs_page.dart';
import 'ui/pages/tipos_update/tipos_update.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          children: [
            GetPage(
              name: '/reatividade',
              page: () => const ReatividadePage(),
            ),
            GetPage(
              name: '/tipos-reativos',
              page: () => const TiposReativosPage(),
            ),
            GetPage(
              name: '/tipos-reativos-genericos',
              page: () => const TiposReativosGenericosPage(),
            ),
            GetPage(
              name: '/tipos-genericos-nulos',
              page: () => const TiposGenericosNulosPage(),
            ),
             GetPage(
            name: '/tipos-obs',
            page: () => const TiposObsPage(),
          ),
                GetPage(
            name: '/tipos-update',
            page: () => const TiposUpdatePage(),
          ),
           
        

          ]
        ),
      ], 
    );
  }
}
