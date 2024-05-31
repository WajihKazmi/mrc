import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Profile',
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
                  CircleAvatar(radius: 40.r),
                  10.verticalSpace,
                  Text('Pansion',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('Lorem Ipsum is simply dummy',
                      style: Theme.of(context).textTheme.labelSmall),
                  50.verticalSpace,
                  list(context, 'Name', 'Chris Williamss', TextInputType.name),
                  10.verticalSpace,
                  list(context, 'Age', '29', TextInputType.number),
                  10.verticalSpace,
                  list(context, 'Email', 'abc@gmail.com',
                      TextInputType.emailAddress),
                  10.verticalSpace,
                  list(context, 'Contact', 'xxx-xxx-xxx', TextInputType.number),
                  10.verticalSpace,
                  list(context, 'Interests', 'ABC-ABC', TextInputType.text),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

list(context, title, name, keyboardType) => Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        10.verticalSpace,
        AppTextFormField(
          hintText: name,
          keyboardType: keyboardType,
          fillColor: Theme.of(context).colorScheme.primaryContainer,
        ),
      ],
    );
