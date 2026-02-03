import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> requestOtp(String phone) async {
    return await remoteDataSource.requestOtp(phone);
  }

  @override
  Future<void> verifyOtp(String preAuthSessionId, String otp) async {
    return await remoteDataSource.verifyOtp(preAuthSessionId, otp);
  }
}
