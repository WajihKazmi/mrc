import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/notification_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class NotificationViewModel with ChangeNotifier {
  final notificationRepository = NotificationRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<NotificationModel> notificationModel = ApiResponse.loading();

  // setNotificationLoading(ApiResponse<NotificationModel> response) {
  //   notificationModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchNotificationApi() async {
  //   setNotificationLoading(ApiResponse.loading());

  //   notificationRepository.fetchNotificationApi().then((value) {
  //     setNotificationLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setNotificationLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _notificationLoading = false;
  // bool get notificationLoading => _notificationLoading;

  // setNotificationLoading(bool value) {
  //   _notificationLoading = value;
  //   notifyListeners();
  // }

  // Future<void> notificationApi(dynamic data, BuildContext context) async {
  //   setNotificationLoading(true);

  //   notificationRepository.notificationApi(data).then((value) {
  //     setNotificationLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setNotificationLoading(false);
  //   });
  // }

}
