import 'package:flutter/material.dart';
import 'package:mrc/respository/important_resources_repository.dart';
import '/data/response/api_response.dart';
import '/resource/app_navigator.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class ImportantResourcesViewModel with ChangeNotifier {
  final important_resourcesRepository = ImportantResourcesRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<ImportantResourcesModel> important_resourcesModel = ApiResponse.loading();

  // setImportantResourcesLoading(ApiResponse<ImportantResourcesModel> response) {
  //   important_resourcesModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchImportantResourcesApi() async {
  //   setImportantResourcesLoading(ApiResponse.loading());

  //   important_resourcesRepository.fetchImportantResourcesApi().then((value) {
  //     setImportantResourcesLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setImportantResourcesLoading(ApiResponse.error(error.toString()));
  //   });
  // }

  //   ***   this is Post api data   ***

  // bool _important_resourcesLoading = false;
  // bool get important_resourcesLoading => _important_resourcesLoading;

  // setImportantResourcesLoading(bool value) {
  //   _important_resourcesLoading = value;
  //   notifyListeners();
  // }

  // Future<void> important_resourcesApi(dynamic data, BuildContext context) async {
  //   setImportantResourcesLoading(true);

  //   important_resourcesRepository.important_resourcesApi(data).then((value) {
  //     setImportantResourcesLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setImportantResourcesLoading(false);
  //   });
  // }
}
