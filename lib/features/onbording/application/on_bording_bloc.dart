import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_bording_event.dart';
part 'on_bording_state.dart';
part 'on_bording_bloc.freezed.dart';

class OnBordingBloc extends Bloc<OnBordingEvent, OnBordingState> {
  OnBordingBloc() : super(OnBordingState.initial()) {
    //CHANGE PAGE FN
    on<_ChangePage>(_changePage);
  }

  void _changePage(_ChangePage event, Emitter<OnBordingState> emit) {
    emit(state.copyWith(currentPageIndex: event.index));
  }
}
