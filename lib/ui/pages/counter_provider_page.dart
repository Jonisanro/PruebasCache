import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import '../../providers/counter_provider.dart';


class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({super.key});

   @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider()
      
      ,child: const _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody(
  
  );

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
          const Text('Contador Provider', style: TextStyle(fontSize: 20)),
           FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Contador: ${counterProvider.counter}",
                style:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButtom(
                  text: 'Incrementar si',
                  onPressed: () =>counterProvider.increment(),
                  ),
              CustomFlatButtom(
                  text: 'Decrementar',
                  onPressed: () =>counterProvider.decrement(),
                  
            ),  ],
          
          ),
          const Spacer(),
        ],
      ),
    );
  }
}