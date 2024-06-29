import 'package:flutter/material.dart';
import 'package:min_riverpod/hook/page_1.dart';
import 'package:min_riverpod/hook/page_2.dart';
import 'package:min_riverpod/hook/page_3.dart';
import 'package:min_riverpod/hook/page_4.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        '/home': (context) => const HomePage(),
        "/1": (context) => const Page1(),
        "/2": (context) => const Page2(),
        "/3": (context) => const Page3(),
        "/4": (context) => const Page4(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
            child: const Text("1"),
            onPressed: () {
              Navigator.of(context).pushNamed("/1");
            },
          ),
          ElevatedButton(
            child: const Text("2"),
            onPressed: () {
              Navigator.of(context).pushNamed("/2");
            },
          ),
          ElevatedButton(
            child: const Text("3"),
            onPressed: () {
              Navigator.of(context).pushNamed("/3");
            },
          ),
          ElevatedButton(
            child: const Text("4"),
            onPressed: () {
              Navigator.of(context).pushNamed("/4");
            },
          )
        ]),
      ),
    );
  }
}
