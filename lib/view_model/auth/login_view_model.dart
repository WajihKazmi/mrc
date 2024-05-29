import 'package:flutter/material.dart';
import 'package:mrc/model/token_model.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/respository/auth/login_repository.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/view_model/services/token_view_model.dart';
import 'package:provider/provider.dart';

class LoginViewModel with ChangeNotifier {
  final loginRepository = LoginRepository();

  //   ***   this is Post api data   ***

  bool _loginLoading = false;
  bool get loginLoading => _loginLoading;

  setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoginLoading(true);

    loginRepository.loginApi(data).then((value) {
      setLoginLoading(false);
      final tokenPreference =
          Provider.of<TokenViewModel>(context, listen: false);
      tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
      AppNavigator.pushNamed(context, RoutesName.munawer);
    }).onError((error, stackTrace) {
      setLoginLoading(false);
    });
  }
}
