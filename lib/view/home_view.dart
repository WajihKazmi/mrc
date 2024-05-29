import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r))),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: IconButton(
                    onPressed: () => AppNavigator.pushNamed(
                        context, RoutesName.notification),
                    icon: Icon(
                      Icons.notifications,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 30,
                    )),
              ),
            ],
            title: Text('Home',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary)),
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).colorScheme.primary,
            expandedHeight: 450.0.h,
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 360.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(AppImages.map), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50.r))),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: AppPadding.screenPadding,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Important Resources',
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
                  AppButton.outlineGetButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Federal',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer)),
                          Icon(Icons.arrow_forward_ios,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer)
                        ],
                      ),
                      onPressed: () => AppNavigator.pushNamed(
                          context, RoutesName.importantResourcesView,
                          arguments: {'name': 'Federal'}),
                      context: context),
                  10.verticalSpace,
                  AppButton.outlineGetButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('State',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer)),
                          Icon(Icons.arrow_forward_ios,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer)
                        ],
                      ),
                      onPressed: () => AppNavigator.pushNamed(
                          context, RoutesName.importantResourcesView,
                          arguments: {'name': 'State'}),
                      context: context),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
