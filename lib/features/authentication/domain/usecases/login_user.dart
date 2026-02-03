import '../repositories/auth_repository.dart';
import '../entities/user.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<User> requestOtp(String phone) {
    return repository.requestOtp(phone);
  }

  Future<void> verifyOtp(String preAuthSessionId, String otp) {
    return repository.verifyOtp(preAuthSessionId, otp);
  }
}
