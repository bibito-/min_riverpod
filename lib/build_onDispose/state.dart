import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

// stateの保持を参照がなくなっても続けたい場合は↓のコメントを外して、普段のアノテーションをコメントアウト
// @Riverpod(keepAlive: true)
@riverpod
class CountNotifier extends _$CountNotifier {
  @override
  int build() {
    // 最初のデータを準備する
    debugPrint('誰かにwatchされたのでデータを準備します');

    // データが捨てられた時のことを決めておく
    ref.onDispose(() {
      debugPrint('誰にもwatchされなくなったのでデータを捨てます');
    });

    return 0;
  }

  // データを変更する関数
  void updateState() {
    final oldState = state;
    final newState = oldState + 1;
    state = newState;
  }
}
