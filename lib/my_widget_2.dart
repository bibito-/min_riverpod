import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:min_riverpod/s2.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s2 = ref.watch(s2NotifierProvider);

    // ボタンだよ
    final button = FloatingActionButton(
      onPressed: () {
        // 語尾にnotifierメンバーを渡すのわすれがち
        final notifier = ref.read(s2NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );

    final listView = ListView.builder(
      itemCount: s2.length,
      itemBuilder: (_, index) {
        final text = Text(s2[index]);
        return Card(
          child: text,
        );
      },
    );

    return Scaffold(
      floatingActionButton: button,
      body: listView,
    );
  }
}
