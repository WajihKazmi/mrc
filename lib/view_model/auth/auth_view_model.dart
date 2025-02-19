import 'package:flutter/material.dart';
import 'package:mrc/respository/auth/auth_repository.dart';
import 'package:provider/provider.dart';
import '/resource/app_navigator.dart';
import '/model/token_model.dart';
import '/utils/routes/routes_name.dart';
import '/view_model/services/token_view_model.dart';

class AuthViewModel with ChangeNotifier {
  final authRepository = AuthRepository();

  bool _loginLoading = false;
  bool get loginLoading => _loginLoading;

  setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoginLoading(true);

    authRepository.loginApi(data).then((value) {
      setLoginLoading(false);
      final tokenPreference = Provider.of<TokenViewModel>(context, listen: false);
      tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
      AppNavigator.pushNamed(context, RoutesName.home);
    }).onError((error, stackTrace) {
      setLoginLoading(false);
    });
  }

bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);

    authRepository.signUpApi(data).then((value) {
      setSignUpLoading(false);
      AppNavigator.pushNamed(context, RoutesName.home);
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
    });
  }
}
