import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/select_sikoku/widget.dart';

void main() {
  const app = MayApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}
