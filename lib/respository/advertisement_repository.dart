import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class AdvertisementRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<AdvertisementModel> fetchAdvertisementApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.advertisement);
  //     return response = AdvertisementModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   ***   this is Post api data   ***

  // Future<dynamic> advertisementApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.advertisement, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
