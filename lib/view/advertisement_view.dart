import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/utils/utils.dart';

class AdvertisementView extends StatelessWidget {
  const AdvertisementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(context, 'Advertisement'),
          SliverPadding(
            padding: AppPadding.screenPadding.copyWith(top: 0.h),
            sliver: SliverToBoxAdapter(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 20.h),
                  itemCount: 2,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Amazon',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    )),
                          ),
                          SizedBox(height: 10.h),
                          InkWell(
                            borderRadius: BorderRadius.circular(20.r),
                            onTap: () {},
                            child: Container(
                              height: 150.h,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            ),
                          ),
                        ],
                      )),
            ),
          )
        ],
      ),
    ));
  }
}
