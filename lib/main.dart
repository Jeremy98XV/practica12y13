import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practica12/pages/api_page.dart';
import 'package:practica12/pages/cesta_compra_page.dart';
import 'package:practica12/pages/personalizado_page.dart';
import 'package:practica12/pages/home.dart';

import 'firebase_options.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (context) => Home_Page(),
        'api': (context) => Api_Page(),
        'personalizado': (context) => PersonalizadoPage(),
        'firestorage': (context) => CestaCompraPage(),
      },
    );
  }
}
