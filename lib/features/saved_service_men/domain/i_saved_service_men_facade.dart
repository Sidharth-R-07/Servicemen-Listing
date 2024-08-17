import 'package:servicemen_listing/core/utils/typedef/app_typedef.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

abstract class ISavedServiceMenFacade {
  //ADD HIVE SERVICE MEN
  FutureResult<ServicePeople> addSavedServiceMen(ServicePeople servicePeople) {
    throw UnimplementedError('addSavedServiceMen() is not implemented');
  }

  //REMOVE HIVE SERVICE MEN
  FutureResult<ServicePeople> removeSavedServiceMen(
      ServicePeople servicePeople) {
    throw UnimplementedError('removeSavedServiceMen() is not implemented');
  }

  //GET ALL SERVICE MEN FROM HIVE
  FutureResult<List<ServicePeople>> getAllSavedServiceMen() {
    throw UnimplementedError('getAllSavedServiceMen() is not implemented');
  }
}
