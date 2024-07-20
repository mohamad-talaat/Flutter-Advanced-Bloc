//login repostory
import 'package:dartz/dartz.dart';
import 'package:flutter_advanced_omar_ahmed/core/apis_link.dart';
import 'package:flutter_advanced_omar_ahmed/core/networking/crud.dart';
import 'package:flutter_advanced_omar_ahmed/features/login/data/login_model.dart';

// class LoginRepo {
//   Future<LoginModel> login(String email, String password) async {
//     return LoginModel(email: email, password: password);

//   }

// }


class LoginRepo {
  // late Crud crud; //object from crud
  // LoginRepo(this.crud);
  final Crud crud = Crud();

  postData(String email, String password) async {
 // postData(LoginModel loginModel) async {
    //try , catch error
    debugPrint("the problem <<<<<<<<<in Link Data");
    var response = await crud.postData(AppLink.apisLogin, {
      "email": email ,//loginModel.email,
      "password": password,// loginModel.password,
    });
    debugPrint("the problem <<<<<<<<<in get Data");
    return response.fold((l) => l, (r) => r);
    //     (success) => Right(LoginModel.fromJson(success)),
  }

  //getData for login
  //deleteData for login
  //updateData for login
}
