import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/select_sikoku/state.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  // 香川の処理に注目
  // listenで香川のStateの変化のみを注視してるので、snackbarは香川のみ出る
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sikoku = ref.watch(sikokuNotifierProvider);

    // 香川だけをlisten (with select)
    // SnackBarで実機画面下部で表示
    ref.listen(
        sikokuNotifierProvider.select(
          (sikoku) => sikoku.kagawa,
        ), (oldState, newState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("$oldState から $newState へ")),
      );
    });

    // 人口たち
    final popurations = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("${sikoku.kagawa}"),
        Text("${sikoku.ehime}"),
        Text("${sikoku.kouti}"),
        Text("${sikoku.tokusima}"),
      ],
    );

    // ボタンたち
    final buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: const Text("香川"),
            onPressed: () {
              final notifier = ref.read(sikokuNotifierProvider.notifier);
              notifier.updateKagawa();
            }),
        ElevatedButton(
            child: const Text("愛媛"),
            onPressed: () {
              final notifier = ref.read(sikokuNotifierProvider.notifier);
              notifier.updateEhime();
            }),
        ElevatedButton(
            child: const Text("高知"),
            onPressed: () {
              final notifier = ref.read(sikokuNotifierProvider.notifier);
              notifier.updateKochi();
            }),
        ElevatedButton(
            child: const Text("徳島"),
            onPressed: () {
              final notifier = ref.read(sikokuNotifierProvider.notifier);
              notifier.updateTokushima();
            }),
      ],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        popurations,
        buttons,
      ],
    );
  }
}
