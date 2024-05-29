import 'package:flutter/material.dart';
import '/data/response/api_response.dart';
import '/respository/news_and_feed_repository.dart';
import '/resource/app_navigator.dart';
import 'services/token_view_model.dart';
import '/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';
import 'services/token_view_model.dart';

class NewsAndFeedViewModel with ChangeNotifier {
  final news_and_feedRepository = NewsAndFeedRepository();

  //   ***   this is Get api data   ***

  // ApiResponse<NewsAndFeedModel> news_and_feedModel = ApiResponse.loading();

  // setNewsAndFeedLoading(ApiResponse<NewsAndFeedModel> response) {
  //   news_and_feedModel = response;
  //   notifyListeners();
  // }

  // Future<void> fetchNewsAndFeedApi() async {
  //   setNewsAndFeedLoading(ApiResponse.loading());

  //   news_and_feedRepository.fetchNewsAndFeedApi().then((value) {
  //     setNewsAndFeedLoading(ApiResponse.completed(value));
  //   }).onError((error, stackTrace) {
  //     setNewsAndFeedLoading(ApiResponse.error(error.toString()));
  //   });
  // }




  //   ***   this is Post api data   ***

  // bool _news_and_feedLoading = false;
  // bool get news_and_feedLoading => _news_and_feedLoading;

  // setNewsAndFeedLoading(bool value) {
  //   _news_and_feedLoading = value;
  //   notifyListeners();
  // }

  // Future<void> news_and_feedApi(dynamic data, BuildContext context) async {
  //   setNewsAndFeedLoading(true);

  //   news_and_feedRepository.news_and_feedApi(data).then((value) {
  //     setNewsAndFeedLoading(false);
  //     final tokenPreference =
  //         Provider.of<TokenViewModel>(context, listen: false);
  //     tokenPreference.saveToken(TokenModel(token: value['token'].toString()));
  //     AppNavigator.pushNamed(context, RoutesName.munawer);
  //   }).onError((error, stackTrace) {
  //     setNewsAndFeedLoading(false);
  //   });
  // }

}
