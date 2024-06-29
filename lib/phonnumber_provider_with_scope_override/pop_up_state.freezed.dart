// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pop_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopUpState {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopUpStateCopyWith<PopUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopUpStateCopyWith<$Res> {
  factory $PopUpStateCopyWith(
          PopUpState value, $Res Function(PopUpState) then) =
      _$PopUpStateCopyWithImpl<$Res, PopUpState>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$PopUpStateCopyWithImpl<$Res, $Val extends PopUpState>
    implements $PopUpStateCopyWith<$Res> {
  _$PopUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopUpStateImplCopyWith<$Res>
    implements $PopUpStateCopyWith<$Res> {
  factory _$$PopUpStateImplCopyWith(
          _$PopUpStateImpl value, $Res Function(_$PopUpStateImpl) then) =
      __$$PopUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$PopUpStateImplCopyWithImpl<$Res>
    extends _$PopUpStateCopyWithImpl<$Res, _$PopUpStateImpl>
    implements _$$PopUpStateImplCopyWith<$Res> {
  __$$PopUpStateImplCopyWithImpl(
      _$PopUpStateImpl _value, $Res Function(_$PopUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$PopUpStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpStateImpl implements _PopUpState {
  _$PopUpStateImpl({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'PopUpState(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpStateImplCopyWith<_$PopUpStateImpl> get copyWith =>
      __$$PopUpStateImplCopyWithImpl<_$PopUpStateImpl>(this, _$identity);
}

abstract class _PopUpState implements PopUpState {
  factory _PopUpState({final String text}) = _$PopUpStateImpl;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$PopUpStateImplCopyWith<_$PopUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
