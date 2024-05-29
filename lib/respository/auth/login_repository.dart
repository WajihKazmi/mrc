import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class LoginRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  Future<LoginModel> fetchLoginApi() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.login);
      return response = LoginModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  // ***   this is Post api data   ***

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.login, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
