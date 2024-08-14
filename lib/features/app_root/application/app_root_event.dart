part of 'app_root_bloc.dart';

@freezed
class AppRootEvent with _$AppRootEvent {
  const factory AppRootEvent.changeCurrentPaget(int index) =
      _ChangeCurrentPaget;
}
