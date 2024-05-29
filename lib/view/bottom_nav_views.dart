import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mrc/resource/images.dart';
import 'package:mrc/view/advertisement_view.dart';
import 'package:mrc/view/community_forum_view.dart';
import 'package:mrc/view/home_view.dart';
import 'package:mrc/view/news_and_feed_view.dart';
import 'package:mrc/view/setting_view.dart';
import 'package:mrc/view_model/bottom_nav_view_model.dart';
import 'package:provider/provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  List pages = [
    const HomeView(),
    const AdvertisementView(),
    const CommunityForumView(),
    const NewsAndFeedView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          await SystemNavigator.pop();
          return true;
        },
        child: Scaffold(
            extendBody: true,
            bottomNavigationBar:
                // SizedBox(
                //     height: 100.h,
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.vertical(
                //           top: Radius.elliptical(80.0.r, 30.0.r)),
                //       child:
                CurvedNavigationBar(
              color: Theme.of(context).colorScheme.primary,
              buttonBackgroundColor: Theme.of(context).colorScheme.primary,
              backgroundColor: Colors.transparent,
              animationDuration: const Duration(milliseconds: 300),
              // height: 80.h,
              items: <Widget>[
                icon(icon: Icons.home_filled, context: context),
                icon(icon: Icons.shopping_cart, context: context),
                // icon(icon: Icons.chat, context: context),
                Image.asset(
                  AppImages.bottomNavCommunity,
                  height: 30.h,
                  width: 30.w,
                ),
                Image.asset(
                  AppImages.bottomNavFeed,
                  height: 30.h,
                  width: 30.w,
                ),
                icon(icon: Icons.settings, context: context),
              ],
              animationCurve: Curves.easeInOut,
              letIndexChange: (index) => true,
              onTap: (index) =>
                  context.read<BottomNavViewModel>().changeTabIndex(index),
            ),
            body: Consumer<BottomNavViewModel>(
                builder: (context, value, child) =>
                    pages.elementAt(value.tabIndex))));
  }
}

Icon icon({required IconData icon, required BuildContext context}) => Icon(
      icon,
      size: 30,
      color: Theme.of(context).colorScheme.onPrimary,
    );

//  Scaffold(
//     bottomNavigationBar: SizedBox(
//       height: 100.h,
//       child: ClipRRect(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10.0.r),
//             topRight: Radius.circular(10.0.r),
//           ),
//           child: Consumer<BottomNavViewModel>(
//               builder: (context, value, child) {
//             return BottomNavigationBar(
//                 elevation: 1,
//                 backgroundColor:
//                     AppColors.bottomNavigationBarBackgroundColor,
//                 currentIndex: value.tabIndex,
//                 selectedFontSize: 15.r,
//                 unselectedFontSize: 15.r,
//                 unselectedItemColor:
//                     AppColors.bottomNavigationBarUnSelectedItemColor,
//                 selectedItemColor:
//                     AppColors.bottomNavigationBarSelectedItemColor,
//                 onTap: (index) => value.changeTabIndex(index),
//                 items: items['items']
//                 // items: [
//                 //   BottomNavigationBarItem(
//                 //       activeIcon: Icon(
//                 //         CupertinoIcons.house_fill,
//                 //         color: AppColors
//                 //             .bottomNavigationBarSelectedItemColor,
//                 //         size: 30.r,
//                 //       ),
//                 //       icon: Icon(
//                 //         CupertinoIcons.house_fill,
//                 //         color: AppColors
//                 //             .bottomNavigationBarUnSelectedItemColor,
//                 //         size: 30.r,
//                 //       ),
//                 //       label: "Home"),
//                 //   BottomNavigationBarItem(
//                 //       activeIcon: Image.asset(
//                 //         'assets/images/slect.png',
//                 //         height: 30.h,
//                 //         width: 30.w,
//                 //       ),
//                 //       icon: Image.asset(
//                 //         'assets/images/slect.png',
//                 //         color: AppColors
//                 //             .bottomNavigationBarUnSelectedItemColor,
//                 //         height: 30.h,
//                 //         width: 30.w,
//                 //       ),
//                 //       //  Icon(
//                 //       //   Icons.indic,s
//                 //       //   color: Colors.white54,
//                 //       //   size: 30,
//                 //       // ),
//                 //       label: "Services"),
//                 //   BottomNavigationBarItem(
//                 //       activeIcon: Icon(
//                 //         Icons.person,
//                 //         color: AppColors
//                 //             .bottomNavigationBarSelectedItemColor,
//                 //         size: 30.r,
//                 //       ),
//                 //       icon: Icon(
//                 //         Icons.person,
//                 //         color: AppColors
//                 //             .bottomNavigationBarUnSelectedItemColor,
//                 //         size: 30.r,
//                 //       ),
//                 //       label: "Account"),
//                 // ]),
//                 );
//           })),
//     ),
//     body: Consumer<BottomNavViewModel>(
//         builder: (context, value, child) =>
//             pages['pages'].elementAt(value.tabIndex))),
