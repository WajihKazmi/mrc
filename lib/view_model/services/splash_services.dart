import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '/utils/routes/routes_name.dart';
import '/view_model/services/token_view_model.dart';
import '/model/token_model.dart';
import '/resource/app_navigator.dart';

class SplashServices {


  Future<TokenModel> getTokenDate() => TokenViewModel().getToken();


  void checkAuthentication(BuildContext context)async{

    getTokenDate().then((value)async{

      print(value.token.toString());

      if(value.token.toString() == 'null' || value.token.toString() == ''){
        await Future.delayed(const Duration(seconds: 2));
        AppNavigator.pushNamed(context, RoutesName.login);
      }else {
        await  Future.delayed(const Duration(seconds: 2));
        AppNavigator.pushNamed(context, RoutesName.home);
      }

    }).onError((error, stackTrace){
      if(kDebugMode){
        print(error.toString());
      }
    });

  }



}