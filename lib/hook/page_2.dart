import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// User Effectのサンプル
class Page2 extends HookWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        debugPrint("画面が表示された時にやりたいことを書く");

        return () {
          debugPrint("画面が消えた時にやりたいことを書く");
        };
      },
      const [],
    );

    // useStateととの組み合わせ
    final count = useState(0);

    useEffect(
      () {
        debugPrint("値が変わってから呼び出されたかな？ ${count.value}");
        return null;
      },
      // hookしたい時の監視対象を決める
      [count.value],
    );

    final text = Text("${count.value}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("useEffectを使った処理"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text,
            ElevatedButton(
              child: const Text("count変数の増減"),
              onPressed: () {
                count.value += 1;
              },
            ),
          ],
        ),
      ),
    );
  }
}
