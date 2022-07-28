import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('FAB'),
      ),
      appBar: AppBar(title: const Text('Title')),
      body: Column(
        children: [
          const Text('Home Page'),
          ElevatedButton(onPressed: () {}, child: const Text('button')),
        ],
      ),
    );
  }
}
