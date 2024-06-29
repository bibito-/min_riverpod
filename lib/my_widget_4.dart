import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/s4.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s4 = ref.watch(s4NotifierProvider);

    final widget = s4.when(
      // 便利なのが asyncと同じ流れで書ける
      loading: () => const Text("ロード中"),
      error: (e, s) => const Text("エラー"),
      data: (d) => Text(d),
    );

    final button = ElevatedButton(
        onPressed: () {
          final notifier = ref.read(s4NotifierProvider.notifier);

          notifier.updateState();
        },
        child: const Text("do stream!"));

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [widget, button],
    ));
  }
}
