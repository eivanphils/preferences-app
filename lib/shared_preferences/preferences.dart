import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static int _gender = 1;
  static bool _isDarkMode = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(value) {
    _name = value;
    _prefs.setString('name', value);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode(value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }
}
