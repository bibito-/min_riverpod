import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:min_riverpod/select_sikoku/sikoku.dart';

part 'state.g.dart';

@riverpod
class SikokuNotifier extends _$SikokuNotifier {
  @override
  Sikoku build() {
    return Sikoku(kagawa: 93, kouti: 70, ehime: 69, tokusima: 130);
  }

  void updateKagawa() {
    final oldState = state;
    final newState = oldState.copyWith(
      kagawa: oldState.kagawa + 1,
    );
    state = newState;
  }

  void updateTokushima() {
    final oldState = state;
    final newState = oldState.copyWith(
      tokusima: oldState.tokusima + 1,
    );
    state = newState;
  }

  void updateKochi() {
    final oldState = state;
    final newState = oldState.copyWith(
      kouti: oldState.kouti + 1,
    );
    state = newState;
  }

  void updateEhime() {
    final oldState = state;
    final newState = oldState.copyWith(
      ehime: oldState.ehime + 1,
    );
    state = newState;
  }
}
