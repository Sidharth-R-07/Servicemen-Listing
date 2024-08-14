part of 'on_bording_bloc.dart';

@freezed
class OnBordingEvent with _$OnBordingEvent {
  const factory OnBordingEvent.changePage(int index) = _ChangePage;
}
