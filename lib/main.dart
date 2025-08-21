// Archivo: lib/main.dart

import 'package:counter/view/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Importamos el paquete provider
import 'viewmodel/counter_viewmodel.dart';
//import 'views/counter_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(), // Creamos nuestro ViewModel
      child: const MyApp(),
    ), // ChangeNotifierProvider
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ), // ThemeData
      home: MainScreen(), // La vista ahora puede acceder al ViewModel
    ); // MaterialApp
  }
}