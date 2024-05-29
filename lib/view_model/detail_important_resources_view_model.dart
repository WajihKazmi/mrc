import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/detail_important_resources_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class DetailImportantResourcesViewModel with ChangeNotifier {
  final detail_important_resourcesRepository = DetailImportantResourcesRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<DetailImportantResourcesModel> detail_important_resourcesModel = ApiResponse.loading();

  // setDetailImportantResourcesLoading(ApiResponse<DetailImportantResourcesModel> response) {
  //   detail_important_resourcesModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchDetailImportantResourcesApi() async {
  //   setDetailImportantResourcesLoading(ApiResponse.loading());

  //   detail_important_resourcesRepository.fetchDetailImportantResourcesApi().then((value) {
  //     setDetailImportantResourcesLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setDetailImportantResourcesLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _detail_important_resourcesLoading = false;
  // bool get detail_important_resourcesLoading => _detail_important_resourcesLoading;

  // setDetailImportantResourcesLoading(bool value) {
  //   _detail_important_resourcesLoading = value;
  //   notifyListeners();
  // }

  // Future<void> detail_important_resourcesApi(dynamic data, BuildContext context) async {
  //   setDetailImportantResourcesLoading(true);

  //   detail_important_resourcesRepository.detail_important_resourcesApi(data).then((value) {
  //     setDetailImportantResourcesLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setDetailImportantResourcesLoading(false);
  //   });
  // }

}
