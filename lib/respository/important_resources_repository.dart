import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class ImportantResourcesRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<ImportantResourcesModel> fetchImportantResourcesApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.important_resources);
  //     return response = ImportantResourcesModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   ***   this is Post api data   ***

  // Future<dynamic> important_resourcesApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.important_resources, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
