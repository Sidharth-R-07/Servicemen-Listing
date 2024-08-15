import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();
  @lazySingleton
  Dio get dio => Dio();
}
