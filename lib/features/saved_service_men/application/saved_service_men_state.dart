part of 'saved_service_men_bloc.dart';

@freezed
class SavedServiceMenState with _$SavedServiceMenState {
  factory SavedServiceMenState({
    required List<ServicePeople> savedServiceMenList,
    required bool fetchLaoding,
    required bool addLoading,
  }) = _SavedServiceMenState;

  factory SavedServiceMenState.initial() => SavedServiceMenState(
        savedServiceMenList: [],
        fetchLaoding: false,
        addLoading: false,
      );
}
