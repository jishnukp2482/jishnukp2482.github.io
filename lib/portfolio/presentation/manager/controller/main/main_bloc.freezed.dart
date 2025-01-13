// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) selectBody,
    required TResult Function(Uri url) launchUrl,
    required TResult Function() downloadResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? selectBody,
    TResult? Function(Uri url)? launchUrl,
    TResult? Function()? downloadResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? selectBody,
    TResult Function(Uri url)? launchUrl,
    TResult Function()? downloadResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectBody value) selectBody,
    required TResult Function(_LaunchUrl value) launchUrl,
    required TResult Function(_DownloadResume value) downloadResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectBody value)? selectBody,
    TResult? Function(_LaunchUrl value)? launchUrl,
    TResult? Function(_DownloadResume value)? downloadResume,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectBody value)? selectBody,
    TResult Function(_LaunchUrl value)? launchUrl,
    TResult Function(_DownloadResume value)? downloadResume,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectBodyImplCopyWith<$Res> {
  factory _$$SelectBodyImplCopyWith(
          _$SelectBodyImpl value, $Res Function(_$SelectBodyImpl) then) =
      __$$SelectBodyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SelectBodyImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SelectBodyImpl>
    implements _$$SelectBodyImplCopyWith<$Res> {
  __$$SelectBodyImplCopyWithImpl(
      _$SelectBodyImpl _value, $Res Function(_$SelectBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectBodyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectBodyImpl with DiagnosticableTreeMixin implements _SelectBody {
  const _$SelectBodyImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.selectBody(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.selectBody'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectBodyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectBodyImplCopyWith<_$SelectBodyImpl> get copyWith =>
      __$$SelectBodyImplCopyWithImpl<_$SelectBodyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) selectBody,
    required TResult Function(Uri url) launchUrl,
    required TResult Function() downloadResume,
  }) {
    return selectBody(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? selectBody,
    TResult? Function(Uri url)? launchUrl,
    TResult? Function()? downloadResume,
  }) {
    return selectBody?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? selectBody,
    TResult Function(Uri url)? launchUrl,
    TResult Function()? downloadResume,
    required TResult orElse(),
  }) {
    if (selectBody != null) {
      return selectBody(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectBody value) selectBody,
    required TResult Function(_LaunchUrl value) launchUrl,
    required TResult Function(_DownloadResume value) downloadResume,
  }) {
    return selectBody(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectBody value)? selectBody,
    TResult? Function(_LaunchUrl value)? launchUrl,
    TResult? Function(_DownloadResume value)? downloadResume,
  }) {
    return selectBody?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectBody value)? selectBody,
    TResult Function(_LaunchUrl value)? launchUrl,
    TResult Function(_DownloadResume value)? downloadResume,
    required TResult orElse(),
  }) {
    if (selectBody != null) {
      return selectBody(this);
    }
    return orElse();
  }
}

abstract class _SelectBody implements MainEvent {
  const factory _SelectBody({required final int id}) = _$SelectBodyImpl;

  int get id;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectBodyImplCopyWith<_$SelectBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LaunchUrlImplCopyWith<$Res> {
  factory _$$LaunchUrlImplCopyWith(
          _$LaunchUrlImpl value, $Res Function(_$LaunchUrlImpl) then) =
      __$$LaunchUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri url});
}

/// @nodoc
class __$$LaunchUrlImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LaunchUrlImpl>
    implements _$$LaunchUrlImplCopyWith<$Res> {
  __$$LaunchUrlImplCopyWithImpl(
      _$LaunchUrlImpl _value, $Res Function(_$LaunchUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$LaunchUrlImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$LaunchUrlImpl with DiagnosticableTreeMixin implements _LaunchUrl {
  _$LaunchUrlImpl(this.url);

  @override
  final Uri url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.launchUrl(url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.launchUrl'))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchUrlImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchUrlImplCopyWith<_$LaunchUrlImpl> get copyWith =>
      __$$LaunchUrlImplCopyWithImpl<_$LaunchUrlImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) selectBody,
    required TResult Function(Uri url) launchUrl,
    required TResult Function() downloadResume,
  }) {
    return launchUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? selectBody,
    TResult? Function(Uri url)? launchUrl,
    TResult? Function()? downloadResume,
  }) {
    return launchUrl?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? selectBody,
    TResult Function(Uri url)? launchUrl,
    TResult Function()? downloadResume,
    required TResult orElse(),
  }) {
    if (launchUrl != null) {
      return launchUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectBody value) selectBody,
    required TResult Function(_LaunchUrl value) launchUrl,
    required TResult Function(_DownloadResume value) downloadResume,
  }) {
    return launchUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectBody value)? selectBody,
    TResult? Function(_LaunchUrl value)? launchUrl,
    TResult? Function(_DownloadResume value)? downloadResume,
  }) {
    return launchUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectBody value)? selectBody,
    TResult Function(_LaunchUrl value)? launchUrl,
    TResult Function(_DownloadResume value)? downloadResume,
    required TResult orElse(),
  }) {
    if (launchUrl != null) {
      return launchUrl(this);
    }
    return orElse();
  }
}

abstract class _LaunchUrl implements MainEvent {
  factory _LaunchUrl(final Uri url) = _$LaunchUrlImpl;

  Uri get url;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaunchUrlImplCopyWith<_$LaunchUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadResumeImplCopyWith<$Res> {
  factory _$$DownloadResumeImplCopyWith(_$DownloadResumeImpl value,
          $Res Function(_$DownloadResumeImpl) then) =
      __$$DownloadResumeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadResumeImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$DownloadResumeImpl>
    implements _$$DownloadResumeImplCopyWith<$Res> {
  __$$DownloadResumeImplCopyWithImpl(
      _$DownloadResumeImpl _value, $Res Function(_$DownloadResumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DownloadResumeImpl
    with DiagnosticableTreeMixin
    implements _DownloadResume {
  _$DownloadResumeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.downloadResume()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.downloadResume'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadResumeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) selectBody,
    required TResult Function(Uri url) launchUrl,
    required TResult Function() downloadResume,
  }) {
    return downloadResume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? selectBody,
    TResult? Function(Uri url)? launchUrl,
    TResult? Function()? downloadResume,
  }) {
    return downloadResume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? selectBody,
    TResult Function(Uri url)? launchUrl,
    TResult Function()? downloadResume,
    required TResult orElse(),
  }) {
    if (downloadResume != null) {
      return downloadResume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectBody value) selectBody,
    required TResult Function(_LaunchUrl value) launchUrl,
    required TResult Function(_DownloadResume value) downloadResume,
  }) {
    return downloadResume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectBody value)? selectBody,
    TResult? Function(_LaunchUrl value)? launchUrl,
    TResult? Function(_DownloadResume value)? downloadResume,
  }) {
    return downloadResume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectBody value)? selectBody,
    TResult Function(_LaunchUrl value)? launchUrl,
    TResult Function(_DownloadResume value)? downloadResume,
    required TResult orElse(),
  }) {
    if (downloadResume != null) {
      return downloadResume(this);
    }
    return orElse();
  }
}

abstract class _DownloadResume implements MainEvent {
  factory _DownloadResume() = _$DownloadResumeImpl;
}

/// @nodoc
mixin _$MainState {
  int get body => throw _privateConstructorUsedError;
  Uri? get uri => throw _privateConstructorUsedError;
  bool get isUrlLaunch => throw _privateConstructorUsedError;
  String? get urlErrorMsg => throw _privateConstructorUsedError;
  bool get isResumeDownloading => throw _privateConstructorUsedError;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {int body,
      Uri? uri,
      bool isUrlLaunch,
      String? urlErrorMsg,
      bool isResumeDownloading});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? uri = freezed,
    Object? isUrlLaunch = null,
    Object? urlErrorMsg = freezed,
    Object? isResumeDownloading = null,
  }) {
    return _then(_value.copyWith(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isUrlLaunch: null == isUrlLaunch
          ? _value.isUrlLaunch
          : isUrlLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
      urlErrorMsg: freezed == urlErrorMsg
          ? _value.urlErrorMsg
          : urlErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isResumeDownloading: null == isResumeDownloading
          ? _value.isResumeDownloading
          : isResumeDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int body,
      Uri? uri,
      bool isUrlLaunch,
      String? urlErrorMsg,
      bool isResumeDownloading});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
    Object? uri = freezed,
    Object? isUrlLaunch = null,
    Object? urlErrorMsg = freezed,
    Object? isResumeDownloading = null,
  }) {
    return _then(_$MainStateImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as int,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isUrlLaunch: null == isUrlLaunch
          ? _value.isUrlLaunch
          : isUrlLaunch // ignore: cast_nullable_to_non_nullable
              as bool,
      urlErrorMsg: freezed == urlErrorMsg
          ? _value.urlErrorMsg
          : urlErrorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isResumeDownloading: null == isResumeDownloading
          ? _value.isResumeDownloading
          : isResumeDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainStateImpl with DiagnosticableTreeMixin implements _MainState {
  const _$MainStateImpl(
      {required this.body,
      this.uri,
      this.isUrlLaunch = false,
      this.urlErrorMsg,
      this.isResumeDownloading = false});

  @override
  final int body;
  @override
  final Uri? uri;
  @override
  @JsonKey()
  final bool isUrlLaunch;
  @override
  final String? urlErrorMsg;
  @override
  @JsonKey()
  final bool isResumeDownloading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(body: $body, uri: $uri, isUrlLaunch: $isUrlLaunch, urlErrorMsg: $urlErrorMsg, isResumeDownloading: $isResumeDownloading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('isUrlLaunch', isUrlLaunch))
      ..add(DiagnosticsProperty('urlErrorMsg', urlErrorMsg))
      ..add(DiagnosticsProperty('isResumeDownloading', isResumeDownloading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.isUrlLaunch, isUrlLaunch) ||
                other.isUrlLaunch == isUrlLaunch) &&
            (identical(other.urlErrorMsg, urlErrorMsg) ||
                other.urlErrorMsg == urlErrorMsg) &&
            (identical(other.isResumeDownloading, isResumeDownloading) ||
                other.isResumeDownloading == isResumeDownloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, body, uri, isUrlLaunch, urlErrorMsg, isResumeDownloading);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {required final int body,
      final Uri? uri,
      final bool isUrlLaunch,
      final String? urlErrorMsg,
      final bool isResumeDownloading}) = _$MainStateImpl;

  @override
  int get body;
  @override
  Uri? get uri;
  @override
  bool get isUrlLaunch;
  @override
  String? get urlErrorMsg;
  @override
  bool get isResumeDownloading;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
