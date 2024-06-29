import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/s1.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // stateの変更(この場合はs1)を、この widget が監視を続けるように命令
    final s1 = ref.watch(s1NotifierProvider);

    ref.listen(s1NotifierProvider, (oldState, newState) {
      // スナックバーを表示する
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("$oldState から $newState へ変更されました")));
    });

    ElevatedButton button = ElevatedButton(
      onPressed: () {
        // stateの状態をreferenceを通して読み取る
        final notifier = ref.read(s1NotifierProvider.notifier);
        // referenceを通して状態を変更
        notifier.updateState();
      },
      child: const Text("ボタンやで"),
    );

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("ここに追加していくよ"),
        Text("$s1"),
        button,
      ],
    ));
  }
}
