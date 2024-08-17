import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:servicemen_listing/features/saved_service_men/domain/i_saved_service_men_facade.dart';
import 'package:servicemen_listing/features/service_men/domain/model/service_men_model.dart';

part 'saved_service_men_event.dart';
part 'saved_service_men_state.dart';
part 'saved_service_men_bloc.freezed.dart';

class SavedServiceMenBloc
    extends Bloc<SavedServiceMenEvent, SavedServiceMenState> {
  final ISavedServiceMenFacade _iSavedServiceMenFacade;
  SavedServiceMenBloc(this._iSavedServiceMenFacade)
      : super(SavedServiceMenState.initial()) {
    //ADD SAVED LIST
    on<_AddToSavedLoacalStorage>(_addToSavedMens);

    //REMOVE FROM SAVED LIST
    on<_RemoveFromSavedLoacalStorage>(_removeFromSavedMens);

    //FETCH ALL
    on<_FetchAllSavedServiceMen>(_fetchAllSavedServiceMen);
  }

  Future<void> _fetchAllSavedServiceMen(
    _FetchAllSavedServiceMen event,
    Emitter<SavedServiceMenState> emit,
  ) async {
    emit(state.copyWith(fetchLaoding: true));
    final result = await _iSavedServiceMenFacade.getAllSavedServiceMen();
    result.fold(
      (l) => emit(state.copyWith(fetchLaoding: false)),
      (r) {
        emit(state.copyWith(
          fetchLaoding: false,
          savedServiceMenList: r,
        ));
      },
    );
  }

  Future<void> _removeFromSavedMens(
    _RemoveFromSavedLoacalStorage event,
    Emitter<SavedServiceMenState> emit,
  ) async {
    emit(state.copyWith(addLoading: true));
    final result = await _iSavedServiceMenFacade
        .removeSavedServiceMen(event.servicePeople);
    result.fold(
      (l) => emit(state.copyWith(addLoading: false)),
      (r) {
        emit(state.copyWith(
          addLoading: false,
          savedServiceMenList: state.savedServiceMenList
              .where((element) => element.key != r.key)
              .toList(),
        ));
      },
    );
  }

  Future<void> _addToSavedMens(
    _AddToSavedLoacalStorage event,
    Emitter<SavedServiceMenState> emit,
  ) async {
    emit(state.copyWith(addLoading: true));
    final result =
        await _iSavedServiceMenFacade.addSavedServiceMen(event.servicePeople);
    result.fold(
      (l) => emit(state.copyWith(addLoading: false)),
      (r) {
        emit(state.copyWith(
          addLoading: false,
          savedServiceMenList: [...state.savedServiceMenList, r],
        ));
      },
    );
  }
}
