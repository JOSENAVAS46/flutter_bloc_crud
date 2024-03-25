import 'package:shared_preferences/shared_preferences.dart';

class LocalDataApp {
  final SharedPreferences _preferences;

  LocalDataApp(this._preferences);

  String getServer() {
    String data = _preferences.getString('ipServer') ?? '';
    return data;
  }

  void setServer(String value) {
    _preferences.setString('ipServer', value);
  }

  String getIpServerWifi() {
    String data = _preferences.getString('ipServerWifi') ?? '192.168.0.35:3309';
    return data;
  }

  void setIpServerWifi(String value) {
    _preferences.setString('ipServerWifi', value);
  }

  String getIpServerMegas() {
    String data = _preferences.getString('ipServerMegas') ?? '200.24.193.58:3301';
    return data;
  }

  void setIpServerMegas(String value) {
    _preferences.setString('ipServerMegas', value);
  }

  String getCodeUser() {
    return _preferences.getString('codeUser') ?? '';
  }

  void setCodeUser(String value) {
    _preferences.setString('codeUser', value);
  }

  String getUserName() {
    return _preferences.getString('userName') ?? '';
  }

  void setUserName(String value) {
    _preferences.setString('userName', value);
  }



}
