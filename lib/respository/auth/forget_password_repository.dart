import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class ForgetPasswordRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  // ***   this is Get api data   ***

  Future<ForgetPasswordModel> fetchForgetPasswordApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.forget_password);
      return response = ForgetPasswordModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  // ***   this is Post api data   ***

  Future<dynamic> forget_passwordApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.forget_password, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
