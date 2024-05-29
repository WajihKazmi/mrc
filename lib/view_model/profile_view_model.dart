import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/profile_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class ProfileViewModel with ChangeNotifier {
  final profileRepository = ProfileRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<ProfileModel> profileModel = ApiResponse.loading();

  // setProfileLoading(ApiResponse<ProfileModel> response) {
  //   profileModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchProfileApi() async {
  //   setProfileLoading(ApiResponse.loading());

  //   profileRepository.fetchProfileApi().then((value) {
  //     setProfileLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setProfileLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _profileLoading = false;
  // bool get profileLoading => _profileLoading;

  // setProfileLoading(bool value) {
  //   _profileLoading = value;
  //   notifyListeners();
  // }

  // Future<void> profileApi(dynamic data, BuildContext context) async {
  //   setProfileLoading(true);

  //   profileRepository.profileApi(data).then((value) {
  //     setProfileLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setProfileLoading(false);
  //   });
  // }

}
