import 'package:flutter/material.dart';

class QandA extends StatelessWidget {
  const QandA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Q&A'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 174, 0),
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('Go to the Psyduck'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/a');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text('Setting'),
              ),
            ],
          ),
        ));
  }
}
