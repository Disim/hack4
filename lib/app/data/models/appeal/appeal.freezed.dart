// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appeal _$AppealFromJson(Map<String, dynamic> json) {
  return _Appeal.fromJson(json);
}

/// @nodoc
mixin _$Appeal {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  List<String> get answerImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppealCopyWith<Appeal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealCopyWith<$Res> {
  factory $AppealCopyWith(Appeal value, $Res Function(Appeal) then) =
      _$AppealCopyWithImpl<$Res, Appeal>;
  @useResult
  $Res call(
      {String title,
      String text,
      String category,
      int status,
      List<String> images,
      String answer,
      List<String> answerImages});
}

/// @nodoc
class _$AppealCopyWithImpl<$Res, $Val extends Appeal>
    implements $AppealCopyWith<$Res> {
  _$AppealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? category = null,
    Object? status = null,
    Object? images = null,
    Object? answer = null,
    Object? answerImages = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answerImages: null == answerImages
          ? _value.answerImages
          : answerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppealImplCopyWith<$Res> implements $AppealCopyWith<$Res> {
  factory _$$AppealImplCopyWith(
          _$AppealImpl value, $Res Function(_$AppealImpl) then) =
      __$$AppealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String text,
      String category,
      int status,
      List<String> images,
      String answer,
      List<String> answerImages});
}

/// @nodoc
class __$$AppealImplCopyWithImpl<$Res>
    extends _$AppealCopyWithImpl<$Res, _$AppealImpl>
    implements _$$AppealImplCopyWith<$Res> {
  __$$AppealImplCopyWithImpl(
      _$AppealImpl _value, $Res Function(_$AppealImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? category = null,
    Object? status = null,
    Object? images = null,
    Object? answer = null,
    Object? answerImages = null,
  }) {
    return _then(_$AppealImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      answerImages: null == answerImages
          ? _value._answerImages
          : answerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppealImpl implements _Appeal {
  _$AppealImpl(
      {required this.title,
      required this.text,
      required this.category,
      required this.status,
      required final List<String> images,
      required this.answer,
      required final List<String> answerImages})
      : _images = images,
        _answerImages = answerImages;

  factory _$AppealImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppealImplFromJson(json);

  @override
  final String title;
  @override
  final String text;
  @override
  final String category;
  @override
  final int status;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String answer;
  final List<String> _answerImages;
  @override
  List<String> get answerImages {
    if (_answerImages is EqualUnmodifiableListView) return _answerImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerImages);
  }

  @override
  String toString() {
    return 'Appeal(title: $title, text: $text, category: $category, status: $status, images: $images, answer: $answer, answerImages: $answerImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality()
                .equals(other._answerImages, _answerImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      text,
      category,
      status,
      const DeepCollectionEquality().hash(_images),
      answer,
      const DeepCollectionEquality().hash(_answerImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealImplCopyWith<_$AppealImpl> get copyWith =>
      __$$AppealImplCopyWithImpl<_$AppealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppealImplToJson(
      this,
    );
  }
}

abstract class _Appeal implements Appeal {
  factory _Appeal(
      {required final String title,
      required final String text,
      required final String category,
      required final int status,
      required final List<String> images,
      required final String answer,
      required final List<String> answerImages}) = _$AppealImpl;

  factory _Appeal.fromJson(Map<String, dynamic> json) = _$AppealImpl.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  String get category;
  @override
  int get status;
  @override
  List<String> get images;
  @override
  String get answer;
  @override
  List<String> get answerImages;
  @override
  @JsonKey(ignore: true)
  _$$AppealImplCopyWith<_$AppealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
