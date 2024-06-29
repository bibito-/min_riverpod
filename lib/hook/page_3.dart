import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// TextEditingController をつこうてみる
class Page3 extends HookWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final moji = useState("ここに文字が入る予定");

    // initState()句での宣言も、dispose()句でのdisposeもいらない
    final controller = useTextEditingController();

    // 他にも AnimationController とか ScrollController を使える

    final text = Text(moji.value);

    final editor = TextField(
      controller: controller,
      onChanged: (value) {
        moji.value = value;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("useXXXContoller()について"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text,
            editor,
          ],
        ),
      ),
    );
  }
}
