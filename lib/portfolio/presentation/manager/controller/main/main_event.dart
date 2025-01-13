part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.selectBody({
    required int id,
  }) = _SelectBody;

  factory MainEvent.launchUrl(Uri url) = _LaunchUrl;
  factory MainEvent.downloadResume() = _DownloadResume;
}
