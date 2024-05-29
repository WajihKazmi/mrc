import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            'Settings',
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
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ListTile(
                          title: Text('Pansion',
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text('Lorem Ipsum is simply dummy',
                              style: Theme.of(context).textTheme.labelSmall),
                          trailing: Icon(Icons.edit,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                          leading: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                          ),
                        )),
                  ),
                  50.verticalSpace,
                  button(
                      context,
                      'Profile',
                      () => AppNavigator.pushNamed(
                          context, RoutesName.profileView)),
                  10.verticalSpace,
                  button(
                      context,
                      'Change Password',
                      () => AppNavigator.pushNamed(
                          context, RoutesName.changePassword)),
                  10.verticalSpace,
                  button(context, 'Notification Settings', () {}),
                  10.verticalSpace,
                  button(context, 'FAQs',
                      () => AppNavigator.pushNamed(context, RoutesName.faqs)),
                  10.verticalSpace,
                  button(
                      context,
                      'Privacy Policy',
                      () => AppNavigator.pushNamed(
                          context, RoutesName.privacy_policy)),
                  50.verticalSpace,
                  AppButton.outlineGetButton(
                      child: Text('Logout',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer)),
                      onPressed: () =>
                          AppNavigator.pushNamed(context, RoutesName.login),
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

button(context, text, onPressed) => AppButton.getButton(
    color: Theme.of(context).colorScheme.primaryContainer,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer)),
        Icon(Icons.arrow_forward_ios,
            color: Theme.of(context)
                .colorScheme
                .onPrimaryContainer
                .withOpacity(0.3))
      ],
    ),
    onPressed: onPressed,
    context: context);
