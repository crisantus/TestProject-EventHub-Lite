// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure<T> {
  ExceptionType<T> get exception => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res, Failure<T>>;
  @useResult
  $Res call({ExceptionType<T> exception});

  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res, $Val extends Failure<T>>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_value.copyWith(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ) as $Val);
  }

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExceptionTypeCopyWith<T, $Res> get exception {
    return $ExceptionTypeCopyWith<T, $Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$ServerFailureImplCopyWith(_$ServerFailureImpl<T> value,
          $Res Function(_$ServerFailureImpl<T>) then) =
      __$$ServerFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$ServerFailureImpl<T>>
    implements _$$ServerFailureImplCopyWith<T, $Res> {
  __$$ServerFailureImplCopyWithImpl(_$ServerFailureImpl<T> _value,
      $Res Function(_$ServerFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ServerFailureImpl<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl<T> implements ServerFailure<T> {
  const _$ServerFailureImpl({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString() {
    return 'Failure<$T>.serverFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<T, _$ServerFailureImpl<T>> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<T, _$ServerFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return serverFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return serverFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements Failure<T> {
  const factory ServerFailure({required final ExceptionType<T> exception}) =
      _$ServerFailureImpl<T>;

  @override
  ExceptionType<T> get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<T, _$ServerFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$CacheFailureImplCopyWith(_$CacheFailureImpl<T> value,
          $Res Function(_$CacheFailureImpl<T>) then) =
      __$$CacheFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$CacheFailureImpl<T>>
    implements _$$CacheFailureImplCopyWith<T, $Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl<T> _value, $Res Function(_$CacheFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$CacheFailureImpl<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl<T> implements CacheFailure<T> {
  const _$CacheFailureImpl({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString() {
    return 'Failure<$T>.cacheFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<T, _$CacheFailureImpl<T>> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<T, _$CacheFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return cacheFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return cacheFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure<T> implements Failure<T> {
  const factory CacheFailure({required final ExceptionType<T> exception}) =
      _$CacheFailureImpl<T>;

  @override
  ExceptionType<T> get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<T, _$CacheFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformsFailureImplCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$PlatformsFailureImplCopyWith(_$PlatformsFailureImpl<T> value,
          $Res Function(_$PlatformsFailureImpl<T>) then) =
      __$$PlatformsFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$PlatformsFailureImplCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$PlatformsFailureImpl<T>>
    implements _$$PlatformsFailureImplCopyWith<T, $Res> {
  __$$PlatformsFailureImplCopyWithImpl(_$PlatformsFailureImpl<T> _value,
      $Res Function(_$PlatformsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$PlatformsFailureImpl<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$PlatformsFailureImpl<T> implements PlatformsFailure<T> {
  const _$PlatformsFailureImpl({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString() {
    return 'Failure<$T>.platformsFailure(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformsFailureImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformsFailureImplCopyWith<T, _$PlatformsFailureImpl<T>> get copyWith =>
      __$$PlatformsFailureImplCopyWithImpl<T, _$PlatformsFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return platformsFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return platformsFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (platformsFailure != null) {
      return platformsFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return platformsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return platformsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (platformsFailure != null) {
      return platformsFailure(this);
    }
    return orElse();
  }
}

abstract class PlatformsFailure<T> implements Failure<T> {
  const factory PlatformsFailure({required final ExceptionType<T> exception}) =
      _$PlatformsFailureImpl<T>;

  @override
  ExceptionType<T> get exception;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformsFailureImplCopyWith<T, _$PlatformsFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
