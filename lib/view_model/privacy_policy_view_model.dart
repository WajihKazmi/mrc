import 'package:flutter/material.dart';
import '/repository/privacy_policy_repository.dart';

 
import '../model/privacy_policy_model.dart';
import '/data/response/api_response.dart';




class PrivacyPolicyViewModel with ChangeNotifier {
  final privacy_policyRepository = PrivacyPolicyRepository();


  ApiResponse<PrivacyPolicyModel> privacy_policyModel = ApiResponse.loading();

  setPrivacyPolicyLoading(ApiResponse<PrivacyPolicyModel> response) {
    privacy_policyModel = response;
    notifyListeners();
  }

  Future<void> fetchPrivacyPolicyApi() async {
    setPrivacyPolicyLoading(ApiResponse.loading());

    privacy_policyRepository.fetchPrivacyPolicyApi().then((value) {
      setPrivacyPolicyLoading(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setPrivacyPolicyLoading(ApiResponse.error(error.toString()));
    });
  }





}
