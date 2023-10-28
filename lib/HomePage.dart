import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 174, 0),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber[200],
                ),
                child: const Text(
                  'Go to the Psyduck',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber[300],
                ),
                child: const Text(
                  'Setting',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber[400],
                ),
                child: const Text(
                  'Q&A',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
