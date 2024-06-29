import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// my_widget_2 数字の部分を1~4までの間に変えてみよう
import 'package:min_riverpod/my_widget_4.dart';

void main() {
  // Providerの監視範囲を指定　これ重要っす！
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
        home: Scaffold(
      body: Center(
        child: MyWidget(),
      ),
    ));
  }
}
