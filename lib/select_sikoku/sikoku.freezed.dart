// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sikoku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sikoku _$SikokuFromJson(Map<String, dynamic> json) {
  return _Sikoku.fromJson(json);
}

/// @nodoc
mixin _$Sikoku {
  int get kagawa => throw _privateConstructorUsedError;
  int get kouti => throw _privateConstructorUsedError;
  int get ehime => throw _privateConstructorUsedError;
  int get tokusima => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SikokuCopyWith<Sikoku> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SikokuCopyWith<$Res> {
  factory $SikokuCopyWith(Sikoku value, $Res Function(Sikoku) then) =
      _$SikokuCopyWithImpl<$Res, Sikoku>;
  @useResult
  $Res call({int kagawa, int kouti, int ehime, int tokusima});
}

/// @nodoc
class _$SikokuCopyWithImpl<$Res, $Val extends Sikoku>
    implements $SikokuCopyWith<$Res> {
  _$SikokuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kagawa = null,
    Object? kouti = null,
    Object? ehime = null,
    Object? tokusima = null,
  }) {
    return _then(_value.copyWith(
      kagawa: null == kagawa
          ? _value.kagawa
          : kagawa // ignore: cast_nullable_to_non_nullable
              as int,
      kouti: null == kouti
          ? _value.kouti
          : kouti // ignore: cast_nullable_to_non_nullable
              as int,
      ehime: null == ehime
          ? _value.ehime
          : ehime // ignore: cast_nullable_to_non_nullable
              as int,
      tokusima: null == tokusima
          ? _value.tokusima
          : tokusima // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SikokuImplCopyWith<$Res> implements $SikokuCopyWith<$Res> {
  factory _$$SikokuImplCopyWith(
          _$SikokuImpl value, $Res Function(_$SikokuImpl) then) =
      __$$SikokuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int kagawa, int kouti, int ehime, int tokusima});
}

/// @nodoc
class __$$SikokuImplCopyWithImpl<$Res>
    extends _$SikokuCopyWithImpl<$Res, _$SikokuImpl>
    implements _$$SikokuImplCopyWith<$Res> {
  __$$SikokuImplCopyWithImpl(
      _$SikokuImpl _value, $Res Function(_$SikokuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kagawa = null,
    Object? kouti = null,
    Object? ehime = null,
    Object? tokusima = null,
  }) {
    return _then(_$SikokuImpl(
      kagawa: null == kagawa
          ? _value.kagawa
          : kagawa // ignore: cast_nullable_to_non_nullable
              as int,
      kouti: null == kouti
          ? _value.kouti
          : kouti // ignore: cast_nullable_to_non_nullable
              as int,
      ehime: null == ehime
          ? _value.ehime
          : ehime // ignore: cast_nullable_to_non_nullable
              as int,
      tokusima: null == tokusima
          ? _value.tokusima
          : tokusima // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SikokuImpl implements _Sikoku {
  _$SikokuImpl(
      {required this.kagawa,
      required this.kouti,
      required this.ehime,
      required this.tokusima});

  factory _$SikokuImpl.fromJson(Map<String, dynamic> json) =>
      _$$SikokuImplFromJson(json);

  @override
  final int kagawa;
  @override
  final int kouti;
  @override
  final int ehime;
  @override
  final int tokusima;

  @override
  String toString() {
    return 'Sikoku(kagawa: $kagawa, kouti: $kouti, ehime: $ehime, tokusima: $tokusima)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SikokuImpl &&
            (identical(other.kagawa, kagawa) || other.kagawa == kagawa) &&
            (identical(other.kouti, kouti) || other.kouti == kouti) &&
            (identical(other.ehime, ehime) || other.ehime == ehime) &&
            (identical(other.tokusima, tokusima) ||
                other.tokusima == tokusima));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kagawa, kouti, ehime, tokusima);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SikokuImplCopyWith<_$SikokuImpl> get copyWith =>
      __$$SikokuImplCopyWithImpl<_$SikokuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SikokuImplToJson(
      this,
    );
  }
}

abstract class _Sikoku implements Sikoku {
  factory _Sikoku(
      {required final int kagawa,
      required final int kouti,
      required final int ehime,
      required final int tokusima}) = _$SikokuImpl;

  factory _Sikoku.fromJson(Map<String, dynamic> json) = _$SikokuImpl.fromJson;

  @override
  int get kagawa;
  @override
  int get kouti;
  @override
  int get ehime;
  @override
  int get tokusima;
  @override
  @JsonKey(ignore: true)
  _$$SikokuImplCopyWith<_$SikokuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
