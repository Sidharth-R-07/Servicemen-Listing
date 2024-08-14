import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_root_event.dart';
part 'app_root_state.dart';
part 'app_root_bloc.freezed.dart';

class AppRootBloc extends Bloc<AppRootEvent, AppRootState> {
  AppRootBloc() : super(AppRootState.initial()) {
    on<_ChangeCurrentPaget>(_chhangeCurrentPage);
  }

  void _chhangeCurrentPage(
      _ChangeCurrentPaget event, Emitter<AppRootState> emit) {
    emit(state.copyWith(currentPageIndex: event.index));
  }
}
