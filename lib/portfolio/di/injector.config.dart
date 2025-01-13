// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i973;

import '../core/api_provider.dart' as _i847;
import '../core/connection_checker.dart' as _i742;
import '../data/remote/data_source/appdata_source.dart' as _i570;
import '../data/repository/app_repository.dart' as _i385;
import '../domain/repositories/app_repositoryimpl.dart' as _i1050;
import '../presentation/manager/controller/main/main_bloc.dart' as _i825;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i825.MainBloc>(() => _i825.MainBloc());
    gh.singleton<_i847.ApiProvider>(() => _i847.ApiProvider());
    gh.lazySingleton<_i570.AppDataSource>(
        () => _i570.AppdataSourceImpl(gh<_i847.ApiProvider>()));
    gh.lazySingleton<_i742.ConnectionChecker>(() =>
        _i742.ConnectionCheckerImpl(gh<_i973.InternetConnectionChecker>()));
    gh.lazySingleton<_i385.AppRepository>(
        () => _i1050.AppRepositoryimpl(gh<_i570.AppDataSource>()));
    return this;
  }
}
