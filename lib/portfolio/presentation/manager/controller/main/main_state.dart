part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required int body,
    Uri? uri,
    @Default(false) bool isUrlLaunch,
    String? urlErrorMsg,
    @Default(false) bool isResumeDownloading,
  }) = _MainState;
  factory MainState.initial() => MainState(
        body: 0,
      );
}
