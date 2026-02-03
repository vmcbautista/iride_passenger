import '../entities/user.dart';

abstract class AuthRepository {
  Future<User> requestOtp(String phone);

  Future<void> verifyOtp(String preAuthSessionId, String otp);
}
