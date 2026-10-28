import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('History Page')),
      body: const Center(
        child: Text('Ini Halaman History', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}