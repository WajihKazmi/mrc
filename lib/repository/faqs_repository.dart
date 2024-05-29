import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';
 
import '../model/faqs_model.dart';

class FaqsRepository {
  final BaseApiServices _apiServices = NetworkApiService();


  Future<FaqsModel> fetchFaqsApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.faqs);
      return response = FaqsModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }


}
