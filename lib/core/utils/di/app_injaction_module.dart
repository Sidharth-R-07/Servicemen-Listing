import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/services/local_storage_services.dart';
import 'package:servicemen_listing/core/services/notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  NotificationService get notificationService => NotificationService();

  @lazySingleton
  LocalStorageServices get localStorageServices => LocalStorageServices();
}
