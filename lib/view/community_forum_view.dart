import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class CommunityForumView extends StatelessWidget {
  const CommunityForumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(context, 'Community Forum'),
          SliverPadding(
            padding: AppPadding.screenPadding.copyWith(top: 0.h),
            sliver: SliverToBoxAdapter(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 20.h),
                  itemCount: 10,
                  itemBuilder: (context, index) => InkWell(
                        borderRadius: BorderRadius.circular(50.r),
                        onTap: () =>
                            AppNavigator.pushNamed(context, RoutesName.message),
                        child: Container(
                            // margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                border: Border.all(
                                    width: 2,
                                    color:
                                        Theme.of(context).colorScheme.outline)),
                            child: ListTile(
                              title: Text('Pansion',
                                  style:
                                      Theme.of(context).textTheme.labelMedium),
                              subtitle: Text('Lorem Ipsum is simply dummy',
                                  style:
                                      Theme.of(context).textTheme.labelSmall),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer),
                              leading: const CircleAvatar(),
                            )),
                      )),
            ),
          )
        ],
      ),
    ));
  }
}
