import 'package:bloc/bloc.dart';
import 'package:flutter_advanced_omar_ahmed/core/networking/crud.dart';
import 'package:flutter_advanced_omar_ahmed/features/login/data/login_model.dart';
import 'package:flutter_advanced_omar_ahmed/features/login/data/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';
//  part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo
      loginRepo; // instead of  // final TestLoginData testLoginData = TestLoginData();
  LoginCubit(this.loginRepo) : super(LoginInitial());
  // app is cody>> to chat and generate code
  // final TestLoginData testLoginData = TestLoginData();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
//////////////////////////////simple way /////////////////////////////////
///// if you create thisin state: dart run build_runner build --delete-conflicting-outputs
  /// >> you will do this in cubit :: response.when(success:(loginResponsive){emit..} , failure:(...){emit...}) //وبس كدا

  // void login(email, pass) {
  //   if (formstate.currentState!.validate()) {
  //     emit(LoginLoading(StatusRequest.loading));

  //     var response = loginRepo.postData(email, pass);
  //     response.fold(
  //       (l) => emit(LoginFailure(l)),
  //       (r) => emit(LoginSuccess(r)),
  //     );
  //   }
  // }

  ///////////////////////////// by catching all error /////////////////////////////
  // void login(String email, String password) async { // from wael getx to omar bloc
  //   if (formstate.currentState!.validate()) {
  //     emit(LoginLoading(StatusRequest.loading));

  //     var response = await loginRepo.postData(email, password);
  //     print("=============================== Controller $response ");
  //     StatusRequest statusRequest = handlingData(response);
  //     if (StatusRequest.success == statusRequest) {
  //       if (response['status'] == "success") {
  //
  //           LoginModel user = LoginModel.fromJson(response['data']);
  //           emit(LoginSuccess(user));
  //         //  Get.offNamed(AppRoute.home);
  //         } else {
  //           emit(LoginSuccess(LoginModel.fromJson(response['data'])));
  //         //  Get.offNamed(AppRoute.verfiyCodeSignUp, arguments: {"email": email});
  //
  //       } else {
  //         emit(LoginFailure(StatusRequest.failure));
  //         // Get.defaultDialog(
  //         //   title: "Warning",
  //         //   titleStyle: const TextStyle(color: Colors.red),
  //         //   middleText: "Email or Password is Not Correct"
  //         // );
  //       }
  //     } else {
  //       emit(LoginFailure(statusRequest));
  //     }
  //   }
  // }
}
