import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageServices {
  final String onBordingKey = 'onBoardingKey';
  final String loginKey = 'loginKey';

//ONBORDING STATUS
  Future<void> setOnBordingStatus(bool status) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(onBordingKey, status);
  }

  Future<bool> getOnBordingStatus() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(onBordingKey) ?? true;
  }

  //SET LOGIN STATUS
  Future<void> setLoginStatus(bool status) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(loginKey, status);
  }

  Future<bool> getLoginStatus() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(loginKey) ?? false;
  }
}
