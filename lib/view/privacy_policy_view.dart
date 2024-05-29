import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    List title = [
      "Data Collection",
      "Data Use",
      "Data Sharing",
      "Security",
      "Contact Us"
    ];
    List text = [
      """
•	We collect information you provide via forms, surveys etc.
•	Transaction data like payment information is collected during purchases.
•	Usage data like your location is collected to customize our service.
""",
      """
•	We use your information to communicate with you, provide services, and personalize marketing.
•	We do not sell your information to third parties.
•	Usage data is analyzed to improve our services and measure interests.
""",
      """
•	We do not share your information with third parties except to process transactions or comply with legal obligations.
•	Service providers are contractually bound to use data only on our behalf.
""",
      """
•	We take appropriate technical and organizational measures to protect data against unauthorized access.
•	Credit card details are encrypted during transmission through secure SSL technology.
""",
      """
•	You can update or delete your information by contacting us at support@email.com.
•	This Privacy Policy may be updated from time to time.
"""
    ];
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            'Privacy Policy',
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
              child: ListView.separated(
                  separatorBuilder: (context, index) => 20.verticalSpace,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            10.horizontalSpace,
                            Text(title[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w500)),
                          ],
                        ),
                        10.verticalSpace,
                        Text(text[index],
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 12.sp)),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
