import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/view/bottom_nav_views.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.primary,
            expandedHeight: 245.0.h,
            // floating: true,
            leading: IconButton(
              padding: EdgeInsets.only(left: 30.w),
              onPressed: () => AppNavigator.pop(context),
              icon: Image.asset(
                AppImages.backArrow,
                color: Theme.of(context).colorScheme.onPrimary,
                width: 30.w,
              ),
            ),
            centerTitle: true,
            title: Text('Community Forum',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 150.h),
                child: Column(
                  children: [
                    Padding(
                      padding: AppPadding.screenPadding
                          .copyWith(top: 20.h, bottom: 30.h),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                          ),
                          10.horizontalSpace,
                          Text('Pension',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary)),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50.r),
                            topLeft: Radius.circular(50.r),
                          )),
                    ),
                  ],
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: AppPadding.screenPadding.copyWith(top: 0.h),
              child: Stack(
                children: [
                  ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 20.h),
                    padding: EdgeInsets.zero,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CircleAvatar(),
                              10.horizontalSpace,
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 10.h),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        bottomLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text('What about the pension?'),
                                    Row(
                                      children: [
                                        Text(
                                          '12:00 PM',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(fontSize: 6.sp),
                                        ),
                                        const Icon(
                                          Icons.check,
                                          size: 8,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 10.h),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.r),
                                        bottomLeft: Radius.circular(20.r),
                                        bottomRight: Radius.circular(20.r))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text('Lorem ipsum'),
                                    Row(
                                      children: [
                                        Text(
                                          '12:00 PM',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(fontSize: 6.sp),
                                        ),
                                        const Icon(
                                          Icons.check,
                                          size: 8,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              10.horizontalSpace,
                              const CircleAvatar(),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  // Positioned(
                  //   child: AppTextFormField.textFormField(
                  //     context,
                  //     fillColor: Theme.of(context).colorScheme.primaryContainer,
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
