import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/change_password_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class ChangePasswordViewModel with ChangeNotifier {

  final change_passwordRepository = ChangePasswordRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<ChangePasswordModel> change_passwordModel = ApiResponse.loading();

  // setChangePasswordLoading(ApiResponse<ChangePasswordModel> response) {
  //   change_passwordModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchChangePasswordApi() async {
  //   setChangePasswordLoading(ApiResponse.loading());

  //   change_passwordRepository.fetchChangePasswordApi().then((value) {
  //     setChangePasswordLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setChangePasswordLoading(ApiResponse.error(error.toString()));
  //   });
  // }

  //   ***   this is Post api data   ***

  // bool _change_passwordLoading = false;
  // bool get change_passwordLoading => _change_passwordLoading;

  // setChangePasswordLoading(bool value) {
  //   _change_passwordLoading = value;
  //   notifyListeners();
  // }

  // Future<void> change_passwordApi(dynamic data, BuildContext context) async {
  //   setChangePasswordLoading(true);

  //   change_passwordRepository.change_passwordApi(data).then((value) {
  //     setChangePasswordLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setChangePasswordLoading(false);
  //   });
  // }
}
