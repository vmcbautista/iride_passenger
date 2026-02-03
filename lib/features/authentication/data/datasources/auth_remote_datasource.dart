import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> requestOtp(String phone);

  Future<void> verifyOtp(String preAuthSessionId, String otp);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> requestOtp(String phone) async {
    // TODO: Implement API call
    return UserModel(phone: phone);
  }

  @override
  Future<void> verifyOtp(String preAuthSessionId, String otp) async {
    // TODO: Implement API call
  }
}
