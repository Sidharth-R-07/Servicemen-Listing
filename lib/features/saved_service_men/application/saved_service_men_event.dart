part of 'saved_service_men_bloc.dart';

@freezed
class SavedServiceMenEvent with _$SavedServiceMenEvent {
  //ADD TO SAVED ITEM LOCAL STORAGE
  const factory SavedServiceMenEvent.addToSavedLoacalStorage({
    required ServicePeople servicePeople,
  }) = _AddToSavedLoacalStorage;

//REMOVE SERVICE MEN FROM LOCAL STORAGE
  const factory SavedServiceMenEvent.removeFromSavedLoacalStorage({
    required ServicePeople servicePeople,
  }) = _RemoveFromSavedLoacalStorage;

//FETCH ALL SAVED SERVICE MENS FROM LOCAL STORAGE
  const factory SavedServiceMenEvent.fetchAllSavedServiceMen() =
      _FetchAllSavedServiceMen;
}
