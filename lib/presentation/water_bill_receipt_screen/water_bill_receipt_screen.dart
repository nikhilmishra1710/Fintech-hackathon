import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class WaterBillReceiptScreen extends StatelessWidget {
  WaterBillReceiptScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Text("Congratulations!",
                      style: theme.textTheme.headlineLarge),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 276.h,
                          margin: EdgeInsets.only(
                              left: 37.h, top: 12.v, right: 53.h),
                          child: Text(
                              "Your electricity bill payment has been paid successfuly",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPink200
                                  .copyWith(height: 1.47)))),
                  SizedBox(height: 70.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage160,
                      height: 302.v,
                      width: 367.h),
                  Spacer(),
                  CustomElevatedButton(
                      text: "View Receipt",
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      onTap: () {
                        // onTapViewreceipt(context);
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox();
                            });
                      })
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the waterBillViewReceiptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the waterBillViewReceiptScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.waterBillViewReceiptScreen);
  }
}
