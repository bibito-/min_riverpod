import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Page1 extends HookWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // stateをwatchして～からの処理がない
    final count = useState(5);

    // 参照は 変数のcount(NotifierValueクラス) の value から参照, NotifierValueのvalueは常に代わる可能性を考慮する必要がある
    final text = Text(
      "現在のカウントは ${count.value}",
      style:
          TextStyle(color: Colors.brown[600], backgroundColor: Colors.yellow),
    );

    final button = ElevatedButton(
        onPressed: () {
          // stateに値の変化を通知する作業がない
          // context reference に provider.notifier を渡して notifierから通知する あれ
          count.value += 1;
        },
        child: const Text("count state に加算"));

    // return Scaffold(body: ,);
    return Scaffold(
      appBar: AppBar(
        title: const Text("useState()を使った処理"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("useStateを使って生成した state を NotifierValue を使って変更を通知"),
            text,
            button,
          ],
        ),
      ),
    );
  }
}
