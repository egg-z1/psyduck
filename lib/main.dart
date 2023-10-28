import 'package:flutter/material.dart';
import 'package:gorapa/QandA.dart';
import 'package:gorapa/Setting.dart';
import 'package:gorapa/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charactor card',
      home: const Mycard(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Mycard(),
        '/a': (context) => const HomePage(),
        '/b': (context) => const Setting(),
        '/c': (context) => const QandA()
      },
    );
  }
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'POKEMON',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 174, 0),
          elevation: 0.0,
          // leading: IconButton(
          //   icon: const Icon(Icons.menu),
          //   onPressed: () {
          //     debugPrint('menu is clicked');
          //   },
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('shopping cart is clicked');
                },
                icon: const Icon(Icons.shopping_cart)),
            IconButton(
                onPressed: () {
                  debugPrint('search is clicked');
                },
                icon: const Icon(Icons.search))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/gorapa.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/gorapa.png'),
                    backgroundColor: Colors.amber,
                  )
                ],
                accountName: const Text('Psyduck'),
                accountEmail: const Text('psyduck@pokemon.com'),
                onDetailsPressed: () {
                  debugPrint('detail click');
                },
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 213, 122),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.amber,
                ),
                title: const Text('home'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                  debugPrint('Home is clicked');
                },
                trailing: const Icon(Icons.add),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.amber,
                ),
                title: const Text('setting'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Setting()));
                  debugPrint('setting is clicked');
                },
                trailing: const Icon(Icons.add),
              ),
              ListTile(
                leading: const Icon(
                  Icons.question_answer,
                  color: Colors.amber,
                ),
                title: const Text('Q&A'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QandA()));
                  debugPrint('Q&A is clicked');
                },
                trailing: const Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/crying.gif'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Color.fromARGB(255, 255, 174, 0),
                  thickness: 0.8,
                  endIndent: 30.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 174, 0),
                      letterSpacing: 2.0),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'Psyduck',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 174, 0),
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('pokemon power level',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 174, 0),
                        letterSpacing: 2.0)),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  '486',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 174, 0),
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.stars, color: Color.fromARGB(255, 255, 174, 0)),
                    SizedBox(width: 10.0),
                    Text(
                      'headache',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 174, 0),
                          fontSize: 16.0,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.mood_bad,
                        color: Color.fromARGB(255, 255, 174, 0)),
                    SizedBox(width: 10.0),
                    Text(
                      'crying',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 174, 0),
                          fontSize: 16.0,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.sentiment_very_satisfied,
                        color: Color.fromARGB(255, 255, 174, 0)),
                    SizedBox(width: 10.0),
                    Text(
                      'smiling',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 174, 0),
                          fontSize: 16.0,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/gorapa.png'),
                    radius: 40.0,
                    backgroundColor: Colors.white,
                  ),
                ),
              ]),
        ),
        floatingActionButton: const HomeBody());
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "Psyduck stil have a headache...",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
          ),
          backgroundColor: Color.fromARGB(255, 255, 212, 125),
          duration: Duration(milliseconds: 1000),
        ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
      ),
      child: const Text(
        "Psyduck's state",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
