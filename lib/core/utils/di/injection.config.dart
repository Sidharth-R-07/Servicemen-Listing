// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../../features/authetication/domain/i_authetication_facade.dart'
    as _i466;
import '../../../features/authetication/infrastructor/i_authetication_impl.dart'
    as _i140;
import '../../../features/category/domain/i_category_facade.dart' as _i851;
import '../../../features/category/infrastructor/i_category_impl.dart' as _i705;
import '../../../features/saved_service_men/domain/i_saved_service_men_facade.dart'
    as _i450;
import '../../../features/saved_service_men/infrastructor/i_saved_service_men_impl.dart'
    as _i872;
import '../../services/local_storage_services.dart' as _i447;
import '../../services/notification_service.dart' as _i85;
import 'app_injaction_module.dart' as _i1045;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => appInjectableModule.pref,
    preResolve: true,
  );
  gh.lazySingleton<_i361.Dio>(() => appInjectableModule.dio);
  gh.lazySingleton<_i85.NotificationService>(
      () => appInjectableModule.notificationService);
  gh.lazySingleton<_i447.LocalStorageServices>(
      () => appInjectableModule.localStorageServices);
  gh.lazySingleton<_i450.ISavedServiceMenFacade>(
      () => _i872.ISavedServiceMenImpl());
  gh.lazySingleton<_i851.ICategoryFacade>(
      () => _i705.ICategoryImpl(gh<_i361.Dio>()));
  gh.lazySingleton<_i466.IAutheticationFacade>(() => _i140.IAutheticationImpl(
        gh<_i361.Dio>(),
        gh<_i85.NotificationService>(),
      ));
  return getIt;
}

class _$AppInjectableModule extends _i1045.AppInjectableModule {}
