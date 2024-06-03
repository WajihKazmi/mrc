import 'package:flutter/material.dart';
import 'package:mrc/model/token_model.dart';
import 'package:mrc/respository/auth/sign_up_repository.dart';
import 'package:mrc/utils/utils.dart';
import 'package:mrc/view_model/services/token_view_model.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

class SignUpViewModel with ChangeNotifier {
  final signUpRepository = SignUpRepository();

  final TextEditingController nameFirstController = TextEditingController();
  final TextEditingController nameLastController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();
  final TextEditingController interestsController = TextEditingController();
  Utils utils = Utils();
  final formKey = GlobalKey<FormState>();

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  bool validateEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool validatePassword(String password) {
    return password.length >= 6;
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name.';
    }
    return null;
  }

  String? ageValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age.';
    }
    int? age = int.tryParse(value);
    if (age == null || age <= 0) {
      return 'Please enter a valid age.';
    }
    return null;
  }

  String? dateValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your date of birth.';
    }
    final RegExp dateRegex = RegExp(r'^\d{2}-\d{2}-\d{4}$');
    if (!dateRegex.hasMatch(value)) {
      return 'Please enter date in the format dd-mm-yyyy.';
    }

    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email.';
    }
    if (!validateEmail(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password.';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }

  String? confirmPasswordValidator(String? value) {
    if (value != passwordController.text) {
      return 'Passwords do not match.';
    }
    return null;
  }

  String? interestsValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your interests.';
    }
    return null;
  }

  Future<void> signUpApi(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final Map<String, dynamic> data = {
      'firstName': nameFirstController.text,
      'lastName': nameLastController.text,
      'dateOfBirth': dobController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'interest': interestsController.text,
      'phone': "123123",
      'gender': "male"
    };

    setSignUpLoading(true);

    try {
      final response = await signUpRepository.signUpApi(data);

      setSignUpLoading(false);

      if (response['data'] != null && response['data']["token"] != null) {
        final tokenPreference =
            Provider.of<TokenViewModel>(context, listen: false);
        tokenPreference.saveToken(TokenModel(token: response['data']['token']));
        Navigator.pushNamed(context, RoutesName.home);
      } else if (response['error'] != null) {
        String errorMessage = response['error'].toString();

        if (errorMessage.contains('message')) {
          int startIndex = errorMessage.indexOf('"message":');
          int endIndex = errorMessage.indexOf('"}', startIndex);
          String messageContent =
              errorMessage.substring(startIndex + 11, endIndex);
          errorMessage = messageContent;
        }

        // Clear any previous errors
        nameFirstController.clear();
        nameLastController.clear();
        ageController.clear();
        dobController.clear();
        emailController.clear();
        passwordController.clear();
        passwordConfirmController.clear();
        interestsController.clear();

        // Display error message
        utils.errorSnackbar(errorMessage, context);
      } else {
        // Display generic error
        utils.errorSnackbar(
            'An unexpected error occurred. Please try again later.', context);
      }
    } catch (error) {
      print('Error: $error');
      // Display generic error
      utils.errorSnackbar(
          'An unexpected error occurred. Please try again later.', context);
      setSignUpLoading(false);
    }
  }
}
