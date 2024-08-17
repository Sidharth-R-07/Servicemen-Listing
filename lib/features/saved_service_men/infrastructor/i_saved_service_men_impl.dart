import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:servicemen_listing/core/utils/failures/failures.dart';
import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/saved_service_men/domain/i_saved_service_men_facade.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

@LazySingleton(as: ISavedServiceMenFacade)
class ISavedServiceMenImpl implements ISavedServiceMenFacade {
  @override
  FutureResult<ServicePeople> addSavedServiceMen(
    ServicePeople servicePeople,
  ) async {
    try {
      var box = Hive.box<ServicePeople>('service_people_box');
      await box.add(servicePeople);
      debugPrint("ADDED ✅");
      return right(servicePeople);
    } catch (e) {
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }

  @override
  FutureResult<List<ServicePeople>> getAllSavedServiceMen() async {
    try {
      var box = Hive.box<ServicePeople>('service_people_box');

      log("GETTED SERVICE MEN LIST: ${box.values.toList().length}");
      return right(box.values.toList());
    } catch (e) {
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }

  @override
  FutureResult<ServicePeople> removeSavedServiceMen(
      ServicePeople servicePeople) async {
    try {
      var box = Hive.box<ServicePeople>('service_people_box');
      await box.delete(servicePeople.key);
      debugPrint("DELETED ✅");
      return right(servicePeople);
    } catch (e) {
      return left(MainFailure.serverFailure(errorMsg: e.toString()));
    }
  }
}
