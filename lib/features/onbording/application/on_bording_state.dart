part of 'on_bording_bloc.dart';

@freezed
class OnBordingState with _$OnBordingState {
  const factory OnBordingState({
    required int currentPageIndex,
  }) = _OnBordingState;

  factory OnBordingState.initial() => const OnBordingState(currentPageIndex: 0);
}
