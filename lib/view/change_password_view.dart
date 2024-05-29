import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/utils.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> oldPassword = ValueNotifier<bool>(true);
    ValueNotifier<bool> newPassword = ValueNotifier<bool>(true);

    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            leading: IconButton(
              padding: EdgeInsets.only(left: 30.w),
              onPressed: () => AppNavigator.pop(context),
              icon: Image.asset(
                AppImages.backArrow,
                color: Theme.of(context).colorScheme.onPrimary,
                height: 30.h,
                width: 30.w,
              ),
            ),
            context,
            'Change Password',
            expandedHeight: 80.0.h,
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 70.h),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.r),
                        topLeft: Radius.circular(50.r),
                      )),
                )),
          ),
          SliverPadding(
            padding: AppPadding.screenPadding.copyWith(top: 0.h),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Old Password',
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  10.verticalSpace,
                  ValueListenableBuilder(
                      valueListenable: oldPassword,
                      builder: (context, value, child) {
                        return AppTextFormField.textFormField(
                            obscureText: oldPassword.value,
                            obscuringCharacter: "*",
                            context,
                            hintText: '**********************',
                            fillColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            suffixIcon: InkWell(
                                onTap: () =>
                                    oldPassword.value = !oldPassword.value,
                                child: Icon(oldPassword.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility)));
                      }),
                  10.verticalSpace,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('New Password:',
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  10.verticalSpace,
                  ValueListenableBuilder(
                      valueListenable: newPassword,
                      builder: (context, value, child) {
                        return AppTextFormField.textFormField(
                            obscureText: newPassword.value,
                            obscuringCharacter: "*",
                            context,
                            hintText: 'andscascbadbsfbsfb',
                            fillColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            suffixIcon: InkWell(
                                onTap: () =>
                                    newPassword.value = !newPassword.value,
                                child: Icon(newPassword.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility)));
                      }),
                  20.verticalSpace,
                  AppButton.getButton(
                      child: Text('Change Password',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary)),
                      onPressed: () {},
                      context: context),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
