import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/* どうしても必要なコントローラー */
class MyHookController {
  void init() {
    debugPrint('Myコントローラーを準備します');
  }

  void update() {
    debugPrint('Myコントローラーをアップデートします');
  }

  void dispose() {
    debugPrint('Myコントローラーを捨てます');
  }

  void buttonEvent() {
    debugPrint('これはボタンを押したときに呼ばれます');
  }
}

/* カスタムHook */

class _Hook extends Hook<MyHookController> {
  @override
  _State createState() => _State();
}

class _State extends HookState<MyHookController, _Hook> {
  late MyHookController myController;

  @override
  void initHook() {
    super.initHook();
    // Myコントローラーを作る
    myController = MyHookController();
    // Myコントローラーを準備
    myController.init();
  }

  @override
  void didUpdateHook(_Hook oldHook) {
    super.didUpdateHook(oldHook);
    // Myコントローラーをアップデート
    myController.update();
  }

  @override
  void dispose() {
    // Myコントローラーを捨てる
    myController.dispose();
    super.dispose();
  }

  @override
  MyHookController build(BuildContext context) {
    return myController;
  }
}

/* Widget から呼ぶ関数 */

MyHookController useMyController() => use(_Hook());
