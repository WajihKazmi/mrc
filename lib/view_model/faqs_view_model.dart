import 'package:flutter/material.dart';
import '/repository/faqs_repository.dart';

 
import '../model/faqs_model.dart';
import '/data/response/api_response.dart';




class FaqsViewModel with ChangeNotifier {
  final faqsRepository = FaqsRepository();


  ApiResponse<FaqsModel> faqsModel = ApiResponse.loading();

  setFaqsLoading(ApiResponse<FaqsModel> response) {
    faqsModel = response;
    notifyListeners();
  }

  Future<void> fetchFaqsApi() async {
    setFaqsLoading(ApiResponse.loading());

    faqsRepository.fetchFaqsApi().then((value) {
      setFaqsLoading(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setFaqsLoading(ApiResponse.error(error.toString()));
    });
  }





}
