part of 'login_cubit.dart';

// @freezed
// class LoginState with _$LoginState {
//   const factory LoginState.initial() = _Initial;
//   const factory LoginState.loading() = Loading;
// const factory LoginState.success(T data) = Success<T>;
//   const factory LoginState.error( {required String error}) = Error;
//  }
// if you create this >> you will do this in cubit ::
//response.when(success:(loginResponsive){emit..} , failure:(...){emit...})

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
