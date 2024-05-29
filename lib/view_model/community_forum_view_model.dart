import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/community_forum_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class CommunityForumViewModel with ChangeNotifier {
  final community_forumRepository = CommunityForumRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<CommunityForumModel> community_forumModel = ApiResponse.loading();

  // setCommunityForumLoading(ApiResponse<CommunityForumModel> response) {
  //   community_forumModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchCommunityForumApi() async {
  //   setCommunityForumLoading(ApiResponse.loading());

  //   community_forumRepository.fetchCommunityForumApi().then((value) {
  //     setCommunityForumLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setCommunityForumLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _community_forumLoading = false;
  // bool get community_forumLoading => _community_forumLoading;

  // setCommunityForumLoading(bool value) {
  //   _community_forumLoading = value;
  //   notifyListeners();
  // }

  // Future<void> community_forumApi(dynamic data, BuildContext context) async {
  //   setCommunityForumLoading(true);

  //   community_forumRepository.community_forumApi(data).then((value) {
  //     setCommunityForumLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setCommunityForumLoading(false);
  //   });
  // }

}
