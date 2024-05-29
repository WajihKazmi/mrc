import 'package:flutter/material.dart';
import 'package:mrc/model/token_model.dart';
import 'package:mrc/respository/auth/sign_up_repository.dart';
import 'package:mrc/view_model/services/token_view_model.dart';
import '/data/response/api_response.dart';
import '/resource/app_navigator.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class SignUpViewModel with ChangeNotifier {
  final sign_upRepository = SignUpRepository();

  // ***   this is Get api data   ***

  ApiResponse<SignUpModel> sign_upModel = ApiResponse.loading();

  setSignUp(ApiResponse<SignUpModel> response) {
    sign_upModel = response;
    notifyListeners();
  }

  Future<void> fetchSignUpApi() async {
    setSignUp(ApiResponse.loading());

    sign_upRepository.fetchSignUpApi().then((value) {
      setSignUp(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setSignUp(ApiResponse.error(error.toString()));
    });
  }

  // ***   this is Post api data   ***

  bool _sign_upLoading = false;
  bool get sign_upLoading => _sign_upLoading;

  setSignUpLoading(bool value) {
    _sign_upLoading = value;
    notifyListeners();
  }

  Future<void> sign_upApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);

    sign_upRepository.sign_upApi(data).then((value) {
      setSignUpLoading(false);
      final tokenPreference =
          Provider.of<TokenViewModel>(context, listen: false);
      tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
      AppNavigator.pushNamed(context, RoutesName.munawer);
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
    });
  }
}
