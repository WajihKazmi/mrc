import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (bool b) {
        Navigator.of(context).pop(true); // Updated line
        return;
      },
      child: Scaffold(
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
                        onPressed: () => AppNavigator.pop(context),
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
                      child: Text('Create your Account',
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
                        keyboardType: TextInputType.name,
                        autofillHints: [AutofillHints.username],
                        hintText: 'First Name'),
                    10.verticalSpace,
                    AppTextFormField(
                        keyboardType: TextInputType.name,
                        autofillHints: [AutofillHints.name],
                        hintText: 'Last Name'),
                    10.verticalSpace,
                    AppTextFormField(
                        keyboardType: TextInputType.number, hintText: 'Age'),
                    10.verticalSpace,
                    AppTextFormField(
                        keyboardType: TextInputType.datetime,
                        autofillHints: [AutofillHints.birthday],
                        hintText: 'DOB'),
                    10.verticalSpace,
                    AppTextFormField(
                        autofillHints: [AutofillHints.email],
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Email'),
                    10.verticalSpace,
                    AppTextFormField(
                        autofillHints: [AutofillHints.newPassword],
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Password'),
                    10.verticalSpace,
                    AppTextFormField(
                        autofillHints: [AutofillHints.newPassword],
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Confirm Password'),
                    10.verticalSpace,
                    AppTextFormField(
                        keyboardType: TextInputType.text,
                        hintText: 'Interests'),
                    10.verticalSpace,
                    AppButton.getButton(
                        child: Text('Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary)),
                        onPressed: () => AppNavigator.pushNamed(
                            context, RoutesName.bottomNav),
                        context: context),
                    50.verticalSpace,
                    Text('- Or Sign Up with -',
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
                          'Already have a Account?',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        TextButton(
                          child: Text(
                            'Sign In',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                          ),
                          onPressed: () =>
                              AppNavigator.pushNamed(context, RoutesName.login),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
