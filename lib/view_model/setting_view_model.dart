import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/setting_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class SettingViewModel with ChangeNotifier {
  final settingRepository = SettingRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<SettingModel> settingModel = ApiResponse.loading();

  // setSettingLoading(ApiResponse<SettingModel> response) {
  //   settingModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchSettingApi() async {
  //   setSettingLoading(ApiResponse.loading());

  //   settingRepository.fetchSettingApi().then((value) {
  //     setSettingLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setSettingLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _settingLoading = false;
  // bool get settingLoading => _settingLoading;

  // setSettingLoading(bool value) {
  //   _settingLoading = value;
  //   notifyListeners();
  // }

  // Future<void> settingApi(dynamic data, BuildContext context) async {
  //   setSettingLoading(true);

  //   settingRepository.settingApi(data).then((value) {
  //     setSettingLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setSettingLoading(false);
  //   });
  // }

}
