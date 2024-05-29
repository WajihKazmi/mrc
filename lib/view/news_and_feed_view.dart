import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/utils/utils.dart';

class NewsAndFeedView extends StatelessWidget {
  const NewsAndFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(context, 'News & Feed'),
          SliverPadding(
            padding: AppPadding.screenPadding.copyWith(top: 0.h),
            sliver: SliverToBoxAdapter(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 20.h),
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () {},
                        title: Text('Pansion',
                            style: Theme.of(context).textTheme.labelMedium),
                        subtitle: Text('Lorem Ipsum is simply dummy',
                            style: Theme.of(context).textTheme.labelSmall),
                        leading: const CircleAvatar(),
                      )),
            ),
          )
        ],
      ),
    ));
  }
}
