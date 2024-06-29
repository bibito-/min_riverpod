import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:min_riverpod/hook/my_hook_controller.dart';

/// TextEditingController をつこうてみる
class Page4 extends HookWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    /*
     作ったライフサイクルに応じて呼び出せば、Hookwidget内でも使えるよ
    */
    final myController = useMyController();

    final button = ElevatedButton(
        onPressed: () {
          myController.dispose();
        },
        child: const Text("カスタムしたコントローラーを呼んでみよう"));

    return Scaffold(
      appBar: AppBar(
        title: const Text("カスタムhookについて"),
      ),
      body: Center(
        child: button,
      ),
    );
  }
}
