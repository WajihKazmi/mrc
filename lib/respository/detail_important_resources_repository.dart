import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class DetailImportantResourcesRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<DetailImportantResourcesModel> fetchDetailImportantResourcesApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.detail_important_resources);
  //     return response = DetailImportantResourcesModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   ***   this is Post api data   ***

  // Future<dynamic> detail_important_resourcesApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.detail_important_resources, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
