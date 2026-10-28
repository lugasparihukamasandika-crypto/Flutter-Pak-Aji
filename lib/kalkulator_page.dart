import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator')),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(hintText: 'Input Angka 1'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(hintText: 'Input Angka 2'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('+', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('-', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('×', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('÷', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text('Hasil', style: TextStyle(fontSize: 20)),
          const Text('0', style: TextStyle(fontSize: 30)),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Reset', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
