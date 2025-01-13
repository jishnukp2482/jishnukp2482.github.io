import 'package:injectable/injectable.dart';

import '../../data/remote/data_source/appdata_source.dart';
import '../../data/repository/app_repository.dart';

@LazySingleton(as: AppRepository)
@injectable
class AppRepositoryimpl extends AppRepository {
  final AppDataSource appDataSource;

  AppRepositoryimpl(this.appDataSource);
}
