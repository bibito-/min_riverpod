import 'package:freezed_annotation/freezed_annotation.dart';

part "sikoku.freezed.dart";
part "sikoku.g.dart";

@freezed
class Sikoku with _$Sikoku {
  // final int kagawa;
  // final int kouti;
  // final int ehime;
  // final int tokusima;

  factory Sikoku({
    required int kagawa,
    required int kouti,
    required int ehime,
    required int tokusima,
  }) = _Sikoku;

  factory Sikoku.fromJson(Map<String, dynamic> json) => _$SikokuFromJson(json);
}
