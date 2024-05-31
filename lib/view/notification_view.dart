import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_text_form_field.dart';
import 'package:mrc/resource/images.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            // expandedHeight: 150.0.h,
            centerTitle: true,
            floating: true,
            pinned: false,
            leadingWidth: 100.w,
            leading: IconButton(
              onPressed: () => AppNavigator.pop(context),
              icon: Image.asset(
                AppImages.backArrow,
                height: 30.h,
                width: 30.w,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            title: Text('Notification',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer)),
            bottom: PreferredSize(
                preferredSize: Size(double.infinity, 60.h),
                child: Padding(
                  padding:
                      AppPadding.screenPadding.copyWith(top: 0.h, bottom: 0.h),
                  child: AppTextFormField(
                      fillColor: Theme.of(context).colorScheme.primaryContainer,
                      hintText: 'Search',
                      suffixIcon: const Icon(CupertinoIcons.search)),
                )),
          ),
          SliverPadding(
            padding: AppPadding.screenPadding.copyWith(top: 50.h),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Text('New Notifications',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer
                          .withOpacity(0.8))),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.h,
                ),
                padding: EdgeInsets.zero,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Text('Pansion',
                        style: Theme.of(context).textTheme.labelMedium),
                    subtitle: Text('Lorem Ipsum is simply dummy',
                        style: Theme.of(context).textTheme.labelSmall),
                    leading: const CircleAvatar(),
                  );
                },
              ),
              SizedBox(height: 20.h),
              Text('Earlier Notifications',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer
                          .withOpacity(0.8))),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.h,
                ),
                padding: EdgeInsets.zero,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    title: Text('Pansion',
                        style: Theme.of(context).textTheme.labelMedium),
                    subtitle: Text('Lorem Ipsum is simply dummy',
                        style: Theme.of(context).textTheme.labelSmall),
                    leading: const CircleAvatar(),
                  );
                },
              )
            ])),
          )
        ],
      ),
    ));
  }
}
