import 'package:injectable/injectable.dart';

import '../../../core/api_provider.dart';


abstract class AppDataSource {}
@LazySingleton(as: AppDataSource)
@injectable
class AppdataSourceImpl extends AppDataSource {
  final ApiProvider apiProvider;

  AppdataSourceImpl(this.apiProvider);
}
