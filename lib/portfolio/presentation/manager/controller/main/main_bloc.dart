import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:potfolio/portfolio/presentation/themes/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<_SelectBody>(_selectBody);
    on<_LaunchUrl>(_launchUrl);
    on<_DownloadResume>(_downloadResume);
  }

  void _selectBody(_SelectBody event, Emitter<MainState> emit) {
    emit(MainState(body: event.id));
  }

  void _launchUrl(_LaunchUrl event, Emitter<MainState> emit) async {
    emit(state.copyWith(isUrlLaunch: true, urlErrorMsg: null));
    try {
      if (await canLaunchUrl(event.url)) {
        await launchUrl(event.url, mode: LaunchMode.platformDefault);
        emit(state.copyWith(isUrlLaunch: false, uri: event.url));
      } else {
        emit(state.copyWith(
            isUrlLaunch: false, urlErrorMsg: 'Could not launch ${event.url}'));
      }
    } catch (e) {
      emit(state.copyWith(
          isUrlLaunch: false,
          urlErrorMsg: "Error launching URI:${e.toString()}"));
    }
  }

  void _downloadResume(_DownloadResume event, Emitter<MainState> emit) async {
    emit(state.copyWith(isResumeDownloading: true));
    try {
      final ByteData bytes = await rootBundle.load(AppAssets.myResumeNew);
      final blob = html.Blob([bytes.buffer.asUint8List()]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: url)
        ..target = 'blank'
        ..download = "Jishnu_kp_Flutter_Developer_Resume.pdf"
        ..click();
      html.Url.revokeObjectUrl(url);
      emit(state.copyWith(isResumeDownloading: false));
    } catch (e) {
      emit(
        state.copyWith(
            isResumeDownloading: false,
            urlErrorMsg: "Error Downloading Resume : $e"),
      );
    }
  }

  static MainBloc get(context) => BlocProvider.of(context);
}
