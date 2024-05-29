import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';
 
import '../model/privacy_policy_model.dart';

class PrivacyPolicyRepository {
  final BaseApiServices _apiServices = NetworkApiService();


  Future<PrivacyPolicyModel> fetchPrivacyPolicyApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.privacy_policy);
      return response = PrivacyPolicyModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }


}
