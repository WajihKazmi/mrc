import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/message_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class MessageViewModel with ChangeNotifier {
  final messageRepository = MessageRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<MessageModel> messageModel = ApiResponse.loading();

  // setMessageLoading(ApiResponse<MessageModel> response) {
  //   messageModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchMessageApi() async {
  //   setMessageLoading(ApiResponse.loading());

  //   messageRepository.fetchMessageApi().then((value) {
  //     setMessageLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setMessageLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _messageLoading = false;
  // bool get messageLoading => _messageLoading;

  // setMessageLoading(bool value) {
  //   _messageLoading = value;
  //   notifyListeners();
  // }

  // Future<void> messageApi(dynamic data, BuildContext context) async {
  //   setMessageLoading(true);

  //   messageRepository.messageApi(data).then((value) {
  //     setMessageLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setMessageLoading(false);
  //   });
  // }

}
