import '/data/network/BaseApiServices.dart';
import '/data/network/NetworkApiService.dart';
import '/resource/app_url.dart';

class NotificationRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  //   ***   this is Get api data   ***

  // Future<NotificationModel> fetchNotificationApi() async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getGetApiResponse(AppUrl.notification);
  //     return response = NotificationModel.fromJson(response);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  //   ***   this is Post api data   ***

  // Future<dynamic> notificationApi(dynamic data) async {
  //   try {
  //     dynamic response =
  //         await _apiServices.getPostApiResponse(AppUrl.notification, data);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
