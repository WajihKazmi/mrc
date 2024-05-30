import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class SignUpRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  // ***   this is Get api data   ***

  // Future<SignUpModel> fetchSignUpApi() async {
  //   try {
  //     dynamic response = await _apiServices.getGetApiResponse(AppUrl.sign_up);
  //     return response = SignUpModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // ***   this is Post api data   ***

  Future<dynamic> sign_upApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.sign_up, data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
