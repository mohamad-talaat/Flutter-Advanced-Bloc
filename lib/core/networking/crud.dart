import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_advanced_omar_ahmed/core/networking/ckeckInternet.dart';
import 'package:http/http.dart ' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkTheInternet()) { 
        // check the internet connection : if online get the data else return serverfailure(database or backend)
        //end check the internet connection // either the problem is in you are not connected to the internet
        // or problem in your way to recieve the data from the server
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responsebody = jsonDecode(response.body);
          debugPrint(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offline);
      }
    } catch (_) {
      debugPrint("problem here >>>>>in php or mysql   ");
      return const Left(StatusRequest.failure);
    }
  }
}



enum StatusRequest {
  none,
  loading,
  offline,
  success,
  failure,
  serverfailure,
}

String debugPrint(String name) {
  return name;
}
handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
// الرد بشكل عام : بقوله لو الريسبونس من نوع استيتيس ريقويست فرجعلي الرد ذات نفيه
//والا لو كان الرد ان الاستيتش ريقويست ب نجاح اذا الرد هيكون  ان الاستيتس ريقويت سليمة : ف الحالة دي مبرجعش ريسبونس بل بعلمك ان الداتا صحيحة فكمل

//بقوله هنا لو الريسبونس اللي جايلي من النوع الشمال اطبلعلي الريسبونس نفسه سواء فشل ف السيرفر ولا النت مقفول ولا الفشل بشكل عام
//ولو نجح اطبعلي ان النوع الشمال بقا يمين يحج StatusRequest ب success

