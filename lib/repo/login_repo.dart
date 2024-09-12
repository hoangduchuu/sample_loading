class LoginRepo {
  Future<bool> login(String email, String password) async {
    // Simulate a network request
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}
