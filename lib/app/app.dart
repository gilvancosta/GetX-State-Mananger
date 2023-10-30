import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/pages/home/home_page.dart';
import 'ui/pages/reatividade/reatividade_page.dart';
import 'ui/pages/tipos/tipos_reativos_page.dart';

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
          ]
        ),
      ], 
    );
  }
}
