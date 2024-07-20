import 'package:flutter_advanced_omar_ahmed/core/networking/crud.dart';
import 'package:flutter_advanced_omar_ahmed/features/login/data/login_model.dart';
import 'package:flutter_advanced_omar_ahmed/features/login/data/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepository;

  LoginCubit(this._loginRepository) : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading(StatusRequest.loading));

    final result = await _loginRepository.postData(email, password);

    result.fold(
      (failure) => emit(LoginFailure(failure)),
      (user) => emit(LoginSuccess(user)),
    );
  }
}



abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {
  final StatusRequest loading;
  LoginLoading(this.loading);
} 
class LoginSuccess extends LoginState {
  final LoginModel user;
  LoginSuccess(this.user);
}
class LoginFailure extends LoginState {
  final StatusRequest error;
  LoginFailure(this.error);
}