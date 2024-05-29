import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class SettingRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<SettingModel> fetchSettingApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.setting);
  //     return response = SettingModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   ***   this is Post api data   ***

  // Future<dynamic> settingApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.setting, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
