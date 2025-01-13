import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class ConnectionChecker{
  Future<bool> get isConnected;
  Stream<InternetConnectionStatus> getConnectionInfo();
}
@LazySingleton(as: ConnectionChecker)
class ConnectionCheckerImpl extends ConnectionChecker{
  final InternetConnectionChecker connectionChecker;
ConnectionCheckerImpl(this.connectionChecker);


  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

  @override
  Stream<InternetConnectionStatus> getConnectionInfo(){
    return connectionChecker.onStatusChange;
  }

}