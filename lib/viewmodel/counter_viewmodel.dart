// Archivo: lib/viewmodels/counter_viewmodel.dart

import 'package:flutter/material.dart';
import '../model/counter_model.dart';

// ViewModel que gestiona el estado del contador
class CounterViewModel extends ChangeNotifier {
  // Estado interno del modelo
  final CounterModel model = CounterModel(0);

  // Getter para exponer el valor actual al exterior
  int get count => model.count;

  // Método para incrementar el contador
  void increment() {
    model.count++;
    notifyListeners(); // Notifica a la vista que hubo un cambio
  }

  // Método para decrementar el contador
  void decrement() {
    model.count--;
    notifyListeners(); // Notifica a la vista que hubo un cambio
  }
  // Agregamos el motodo reset
  void reset(){
    model.count = 0;
    notifyListeners();   //notifica a la vista para que se reconstruya
  }
}