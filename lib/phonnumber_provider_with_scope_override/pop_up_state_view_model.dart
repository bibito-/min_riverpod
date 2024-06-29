import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pop_up_state.dart';

class PopUpViewModel extends AutoDisposeNotifier<PopUpState> {
  PopUpViewModel(this._text);
  final String _text;

  void setText(String text) {
    state = state.copyWith(text: text);
  }

  @override
  PopUpState build() {
    return PopUpState(text: _text);
  }
}

// Defaultの watch 対象となるモデル
final popUpViewModelProvider =
    NotifierProvider.autoDispose<PopUpViewModel, PopUpState>(() {
  // overrideされてないとエラーへ
  throw UnimplementedError();
});
