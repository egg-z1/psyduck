import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 174, 0),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.heart_broken,
                  size: 20.0,
                  color: Colors.black,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                label: const Text('Go to the Psyduck',
                    style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/a');
                },
                icon: const Icon(Icons.home),
                label: const Text('Home'),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text(
                  'Q&A',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
