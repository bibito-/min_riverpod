import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // app
  const app = Myapp();

  // Providerの監視範囲を設定してあげる為に監視することとなるWidgetをプロバイダースコープで囲む
  const scope = ProviderScope(
    child: app,
  );
  runApp(scope);
}

// プロバイダー
final nicknameProvider = StateProvider<String>((ref) {
  // 変化するであろうデータ
  return "ruby";
});

// ConsumerWidgetからStatefullWidgetへ変更してあげる
class Myapp extends ConsumerWidget {
  const Myapp({super.key});

  // 以前と違って引数に WidgetRef 型シグネチャを取る
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // データを見張って置く
    final nickname = ref.watch(nicknameProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(nickname)),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 現在のデータ(nickname)を表示
            Text(nickname),
            ElevatedButton(
              onPressed: () => tapA(ref),
              child: const Text("ルビーキャット"),
            ),
            ElevatedButton(
              onPressed: () => tapB(ref),
              child: const Text("ルビードッグ"),
            ),
            ElevatedButton(
              onPressed: () => tapC(ref),
              child: const Text("ルビーバード"),
            ),
          ],
        )),
      ),
    );
  }

  // norifier でデータを変更する
  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーキャット";
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビードッグ";
  }

  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = "ルビーバード";
  }
}
