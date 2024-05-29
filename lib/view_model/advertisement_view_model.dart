import 'package:flutter/material.dart';
import 'package:mrc/respository/advertisement_repository.dart';
import '/data/response/api_response.dart';
import '/resource/app_navigator.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class AdvertisementViewModel with ChangeNotifier {
  final advertisementRepository = AdvertisementRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<AdvertisementModel> advertisementModel = ApiResponse.loading();

  // setAdvertisementLoading(ApiResponse<AdvertisementModel> response) {
  //   advertisementModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchAdvertisementApi() async {
  //   setAdvertisementLoading(ApiResponse.loading());

  //   advertisementRepository.fetchAdvertisementApi().then((value) {
  //     setAdvertisementLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setAdvertisementLoading(ApiResponse.error(error.toString()));
  //   });
  // }

  //   ***   this is Post api data   ***

  // bool _advertisementLoading = false;
  // bool get advertisementLoading => _advertisementLoading;

  // setAdvertisementLoading(bool value) {
  //   _advertisementLoading = value;
  //   notifyListeners();
  // }

  // Future<void> advertisementApi(dynamic data, BuildContext context) async {
  //   setAdvertisementLoading(true);

  //   advertisementRepository.advertisementApi(data).then((value) {
  //     setAdvertisementLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setAdvertisementLoading(false);
  //   });
  // }
}
