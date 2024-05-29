import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class MessageRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<MessageModel> fetchMessageApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.message);
  //     return response = MessageModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   // ***   this is Post api data   ***

  // Future<dynamic> messageApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.message, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
