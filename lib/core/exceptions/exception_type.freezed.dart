// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExceptionType<T> {
  int? get responseNo => throw _privateConstructorUsedError;
  bool get response => throw _privateConstructorUsedError;
  ExceptionCode get code => throw _privateConstructorUsedError;
  T get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExceptionTypeCopyWith<T, ExceptionType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionTypeCopyWith<T, $Res> {
  factory $ExceptionTypeCopyWith(
          ExceptionType<T> value, $Res Function(ExceptionType<T>) then) =
      _$ExceptionTypeCopyWithImpl<T, $Res, ExceptionType<T>>;
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$ExceptionTypeCopyWithImpl<T, $Res, $Val extends ExceptionType<T>>
    implements $ExceptionTypeCopyWith<T, $Res> {
  _$ExceptionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl<T> value,
          $Res Function(_$ServerExceptionImpl<T>) then) =
      __$$ServerExceptionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$ServerExceptionImpl<T>>
    implements _$$ServerExceptionImplCopyWith<T, $Res> {
  __$$ServerExceptionImplCopyWithImpl(_$ServerExceptionImpl<T> _value,
      $Res Function(_$ServerExceptionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$ServerExceptionImpl<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl<T> implements ServerException<T> {
  const _$ServerExceptionImpl(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString() {
    return 'ExceptionType<$T>.serverException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<T, _$ServerExceptionImpl<T>> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<T, _$ServerExceptionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return serverException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return serverException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException<T> implements ExceptionType<T> {
  const factory ServerException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$ServerExceptionImpl<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerExceptionImplCopyWith<T, _$ServerExceptionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheExceptionImplCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$CacheExceptionImplCopyWith(_$CacheExceptionImpl<T> value,
          $Res Function(_$CacheExceptionImpl<T>) then) =
      __$$CacheExceptionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$CacheExceptionImplCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$CacheExceptionImpl<T>>
    implements _$$CacheExceptionImplCopyWith<T, $Res> {
  __$$CacheExceptionImplCopyWithImpl(_$CacheExceptionImpl<T> _value,
      $Res Function(_$CacheExceptionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$CacheExceptionImpl<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CacheExceptionImpl<T> implements CacheException<T> {
  const _$CacheExceptionImpl(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString() {
    return 'ExceptionType<$T>.cacheException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExceptionImpl<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionImplCopyWith<T, _$CacheExceptionImpl<T>> get copyWith =>
      __$$CacheExceptionImplCopyWithImpl<T, _$CacheExceptionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return cacheException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return cacheException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException<T> implements ExceptionType<T> {
  const factory CacheException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$CacheExceptionImpl<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheExceptionImplCopyWith<T, _$CacheExceptionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformsExceptionImplCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$PlatformsExceptionImplCopyWith(_$PlatformsExceptionImpl<T> value,
          $Res Function(_$PlatformsExceptionImpl<T>) then) =
      __$$PlatformsExceptionImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$PlatformsExceptionImplCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$PlatformsExceptionImpl<T>>
    implements _$$PlatformsExceptionImplCopyWith<T, $Res> {
  __$$PlatformsExceptionImplCopyWithImpl(_$PlatformsExceptionImpl<T> _value,
      $Res Function(_$PlatformsExceptionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_$PlatformsExceptionImpl<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PlatformsExceptionImpl<T> implements PlatformsException<T> {
  const _$PlatformsExceptionImpl(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString() {
    return 'ExceptionType<$T>.platformsException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformsExceptionImpl<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformsExceptionImplCopyWith<T, _$PlatformsExceptionImpl<T>>
      get copyWith => __$$PlatformsExceptionImplCopyWithImpl<T,
          _$PlatformsExceptionImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return platformsException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return platformsException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return platformsException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return platformsException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(this);
    }
    return orElse();
  }
}

abstract class PlatformsException<T> implements ExceptionType<T> {
  const factory PlatformsException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$PlatformsExceptionImpl<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;

  /// Create a copy of ExceptionType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformsExceptionImplCopyWith<T, _$PlatformsExceptionImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
