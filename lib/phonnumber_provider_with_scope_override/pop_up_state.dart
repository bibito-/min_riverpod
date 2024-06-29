import 'package:freezed_annotation/freezed_annotation.dart';

part "pop_up_state.freezed.dart";

@freezed
class PopUpState with _$PopUpState {
  // プライベートコンストラクター
  // PopUpState._();

  factory PopUpState({
    @Default('') String text,
  }) = _PopUpState;
}
