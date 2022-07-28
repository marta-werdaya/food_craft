import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Indonesian'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Balinese'),
            )
          ],
        ),
      ),
    );
  }
}
