import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrenceLocalStorage {
  static final SharedPrefrenceLocalStorage _instance = SharedPrefrenceLocalStorage._internal();

  factory SharedPrefrenceLocalStorage() {
    return _instance;
  }

  SharedPrefrenceLocalStorage._internal();

  Future<void> saveToken({required String token}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<void> saveIsVerified({required String isVerified}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('isVerified', isVerified);
  }

  Future<String?> retrieveToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> saveResetToken({required String resetToken}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('reset_token', resetToken);
  }

  Future<String?> retrieveResetToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('reset_token');
  }

  Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future<void> saveUserId({required String userId}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
  }

  Future<String?> retrieveUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('userId');
  }

  Future<void> saveUserEmail({required String email}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
  }

  Future<String?> retrieveUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('email');
  }

  Future<void> saveUserFirstname({required String firstName}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('firstName', firstName);
  }

  Future<String?> retrieveUserFirstname() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('firstName');
  }

  Future<void> saveUserLastname({required String lastName}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastName', lastName);
  }

  Future<String?> retrieveUserLastname() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('lastName');
  }

  Future<void> saveUserPassword({required String password}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('password', password);
  }

  Future<String?> retrieveUserPassword() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('password');
  }

  Future<void> setBiometricsEnabled({required bool enabled}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('enabled', enabled);
  }

  Future<bool?> retrieveBiometricsEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('enabled');
  }

  Future<void> setLoggedIn({required bool isLogged}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogged', isLogged);
  }

  Future<bool?> retrieveLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLogged');
  }

  Future<void> setHasSeenOnBoarding({required bool hasSeenOnBoarding}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasSeenOnBoarding', hasSeenOnBoarding);
  }

  Future<bool?> retrieveHasSeenOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('hasSeenOnBoarding');
  }

  Future<void> saveUserDeviceToken({required String deviceToken}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('deviceToken', deviceToken);
  }

  Future<String?> retrieveUserDeviceToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('deviceToken');
  }

  Future<String?> retrieveIsVerified() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('isVerified');
  }

  Future<void> clearAppPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
