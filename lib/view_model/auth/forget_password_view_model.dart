import 'package:flutter/material.dart';
import 'package:mrc/model/token_model.dart';
import 'package:mrc/respository/auth/forget_password_repository.dart';
import 'package:mrc/view_model/services/token_view_model.dart';
import '/data/response/api_response.dart';
import '/resource/app_navigator.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class ForgetPasswordViewModel with ChangeNotifier {
  final forget_passwordRepository = ForgetPasswordRepository();

  //   ***   this is Get api data   ***

  ApiResponse<ForgetPasswordModel> forget_passwordModel = ApiResponse.loading();

  setForgetPassword(ApiResponse<ForgetPasswordModel> response) {
    forget_passwordModel = response;
    notifyListeners();
  }

  Future<void> fetchForgetPasswordApi() async {
    setForgetPassword(ApiResponse.loading());

    forget_passwordRepository.fetchForgetPasswordApi().then((value) {
      setForgetPassword(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setForgetPassword(ApiResponse.error(error.toString()));
    });
  }

  // ***   this is Post api data   ***

  bool _forget_passwordLoading = false;
  bool get forget_passwordLoading => _forget_passwordLoading;

  setForgetPasswordLoading(bool value) {
    _forget_passwordLoading = value;
    notifyListeners();
  }

  Future<void> forget_passwordApi(dynamic data, BuildContext context) async {
    setForgetPasswordLoading(true);

    forget_passwordRepository.forget_passwordApi(data).then((value) {
      setForgetPasswordLoading(false);
      final tokenPreference =
          Provider.of<TokenViewModel>(context, listen: false);
      tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
      AppNavigator.pushNamed(context, RoutesName.munawer);
    }).onError((error, stackTrace) {
      setForgetPasswordLoading(false);
    });
  }
}
