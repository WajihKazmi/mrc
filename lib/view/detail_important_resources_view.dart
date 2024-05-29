import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';

class DetailImportantResourcesView extends StatelessWidget {
  final dynamic name;
  const DetailImportantResourcesView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            // floating: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.r),
                    bottomRight: Radius.circular(50.r))),
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
            title: Text(name['name'],
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
          SliverPadding(
              padding: AppPadding.screenPadding,
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: 10,
                      (context, index) => Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: ExpansionTile(
                              childrenPadding:
                                  EdgeInsets.symmetric(horizontal: 16.w)
                                      .copyWith(bottom: 16.h),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      width: 2)),
                              collapsedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                  side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      width: 2)),
                              title: Text("Veterans' Benefits Claims",
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              children: [
                                ListView.separated(
                                  padding: EdgeInsets.zero,
                                  physics: const ScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => const Text(
                                    'Relevant information about the link\nHttps://www.xyz.com.org.us',
                                  ),
                                  separatorBuilder: (context, index) =>
                                      const Divider(),
                                  itemCount: 6,
                                )
                              ],
                            ),
                          )))),
        ],
      ),
    ));
  }
}
