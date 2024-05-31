import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/model/auth/login_model.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/respository/auth/login_repository.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/view_model/auth/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.surface,
            expandedHeight: 215.0.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Align(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => AppNavigator.pushNamed(
                          context, RoutesName.loginAndSignupButtonView),
                      icon: Image.asset(
                        AppImages.backArrow,
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                    Image.asset(
                      AppImages.logo,
                      height: 126.h,
                      width: 192.w,
                    ),
                    const SizedBox(),
                    const SizedBox()
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 0.h),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.r),
                        topLeft: Radius.circular(50.r),
                      )),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: AppPadding.screenPadding.copyWith(top: 0.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Login to your Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer)),
                  ),
                  20.verticalSpace,
                  AppTextFormField(
                      isPassword: false,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      hintText: 'Email',
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'Enter a valid email';
                        } else if (!_isValidEmail(val)) {
                          return 'Enter a valid email address';
                        } else {
                          return null;
                        }
                      }),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => AppNavigator.pushNamed(
                          context, RoutesName.forgetEmail,
                          arguments: {'name': 'Email'}),
                      child: Text('Forget Email?',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer
                                      .withOpacity(0.8))),
                    ),
                  ),
                  AppTextFormField(
                    isPassword: true,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: [AutofillHints.password],
                    hintText: 'Password',
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Enter a valid password';
                      } else if (val.length < 8) {
                        return 'Password must be at least 8 characters long';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => AppNavigator.pushNamed(
                          context, RoutesName.forgetEmail,
                          arguments: {'name': 'Password'}),
                      child: Text('Forget Password?',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer
                                      .withOpacity(0.8))),
                    ),
                  ),
                  Consumer<LoginViewModel>(
                      builder: (context, loginProvider, child) {
                    return AppButton.getButton(
                        loading: loginProvider.loginLoading,
                        child: Text('Login',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary)),
                        onPressed: () {
                          LoginModel loginModel = LoginModel(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          loginProvider.loginApi(loginModel.toJson(), context);
                        },
                        context: context);
                  }),
                  50.verticalSpace,
                  Text('- Or Sign in with -',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer
                              .withOpacity(0.5))),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sociaMediaIconButton(
                        onPressed: () {},
                        name: AppImages.google,
                      ),
                      sociaMediaIconButton(
                        onPressed: () {},
                        name: AppImages.facebook,
                      ),
                      sociaMediaIconButton(
                        onPressed: () {},
                        name: AppImages.instagram,
                      ),
                      sociaMediaIconButton(
                        onPressed: () {},
                        name: AppImages.apple,
                      ),
                    ],
                  ),
                  150.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an Account?',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      TextButton(
                        child: Text(
                          'Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                        onPressed: () =>
                            AppNavigator.pushNamed(context, RoutesName.signUp),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  bool _isValidEmail(String value) {
    // Simple regex for email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(value);
  }
}
