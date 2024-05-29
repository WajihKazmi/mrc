import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/app_navigator.dart';
import 'package:mrc/resource/app_padding.dart';
import 'package:mrc/resource/components/app_button.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/utils/routes/routes_name.dart';
import 'package:mrc/utils/utils.dart';

class FaqsView extends StatelessWidget {
  const FaqsView({super.key});

  @override
  Widget build(BuildContext context) {
    List question = [
      "How do I sign up for an account?",
      "I forgot my password, how can I retrieve it?",
      "What payment methods are accepted?",
      "How do I delete my account?"
    ];
    List answers = [
      "To create an account, you need to provide your name, email, password and other required details. Click on the Sign Up button on the login screen to get started.",
      "Click on the Forgot Password link on the login screen. Enter the email address associated with your account and we will send you a password reset link.",
      "We accept payments through credit/debit cards, Netbanking, UPI and wallet services like Paytm, Mobikwik etc. You can add or edit your payment methods from the My Account section.",
      "To delete your account, log in to your account profile and click on Delete My Account. All your data including orders and favorites will be permanently removed from our records."
    ];
    return Scaffold(
        body: Container(
      color: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
        slivers: [
          sliverAppBar(
            context,
            'FAQ’s',
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
                  padding: EdgeInsets.zero,
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.grey.shade300,
                      ),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: question.length,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      childrenPadding: EdgeInsets.symmetric(horizontal: 16.w)
                          .copyWith(bottom: 16.h),
                      shape: const RoundedRectangleBorder(side: BorderSide.none
                          // borderRadius: BorderRadius.circular(20.r),
                          // side: BorderSide(
                          //     color: Theme.of(context).colorScheme.outline,
                          //     width: 1)
                          ),
                      collapsedShape: const RoundedRectangleBorder(
                          side: BorderSide.none
                          // borderRadius: BorderRadius.circular(20.r),
                          // side: BorderSide(
                          //     color: Theme.of(context).colorScheme.outline,
                          //     width: 1)
                          ),
                      title: Text(question[index],
                          style: Theme.of(context).textTheme.titleSmall),
                      children: [
                        Text(
                          answers[index],
                        ),
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
