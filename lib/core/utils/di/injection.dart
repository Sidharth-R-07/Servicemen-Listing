import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

import 'injection.config.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependency() async {
  await init(
    sl,
    environment: Environment.prod,
  );

  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(ServicePeopleAdapter());
  }
  await Hive.openBox<ServicePeople>('service_people_box');
}



  // final notificationPermissionStatus = await Permission.notification.isGranted;

  // if (!notificationPermissionStatus) {
  //   await Permission.notification.request();
  // }