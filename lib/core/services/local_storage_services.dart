import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageServices {
  final String onBordingKey = 'onBoardingKey';

  Future<void> setOnBordingStatus(bool status) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(onBordingKey, status);
  }

  Future<bool> getOnBordingStatus() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(onBordingKey) ?? true;
  }
}
