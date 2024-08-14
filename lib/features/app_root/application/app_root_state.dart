part of 'app_root_bloc.dart';

@freezed
class AppRootState with _$AppRootState {
  const factory AppRootState({
    required int currentPageIndex,
  }) = _AppRootState;

  factory AppRootState.initial() => const AppRootState(currentPageIndex: 0);
}
