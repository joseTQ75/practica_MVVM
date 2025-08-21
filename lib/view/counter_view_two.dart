import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counter/viewmodel/counter_viewmodel.dart'; // Ajusta la ruta si es necesario

class CounterViewTwo extends StatelessWidget {
  const CounterViewTwo({super.key});
  
  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contador de personas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de personas: ${counterViewModel.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counterViewModel.decrement,
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: counterViewModel.increment,
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: counterViewModel.reset,
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}