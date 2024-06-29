import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/s3.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s3 = ref.watch(s3NotifierProvider);

    // 三つのケースを書ける loading, error, data(準備OK)
    final widget = s3.when(
        loading: () => const Text("準備中"),
        error: (e, s) => const Text("エラー"),
        // ここに画面の監視widgetと、Provider経由のstateを一緒に記載
        data: (d) => Text(d));

    // 発火点
    final button = ElevatedButton(
        onPressed: () {
          final notifier = ref.read(s3NotifierProvider.notifier);

          notifier.updateState();
        },
        child: const Text("async処理"));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [widget, button],
    );
  }
}
