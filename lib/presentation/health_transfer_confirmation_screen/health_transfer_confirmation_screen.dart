import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/presentation/health_confirmation_successful_transfer_screen/health_confirmation_successful_transfer_screen.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HealthTransferConfirmationScreen extends StatelessWidget {
  var acc;
  HealthTransferConfirmationScreen(this.acc, {Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 78.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 4.v),
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
                  SizedBox(height: 19.v),
                  Text("Are you sure?", style: theme.textTheme.headlineLarge),
                  Container(
                      width: 352.h,
                      margin: EdgeInsets.only(left: 6.h, top: 12.v, right: 8.h),
                      child: Text(
                          "We care about your privacy. please make sure that you want to transfer money.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumPink200
                              .copyWith(height: 1.47))),
                  SizedBox(height: 29.v),
                  SizedBox(
                      height: 406.v,
                      width: 368.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 369.v,
                                width: 368.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray50001.withOpacity(0.15),
                                    borderRadius:
                                        BorderRadius.circular(20.h)))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 36.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRectangle146975x75,
                                          height: 75.adaptSize,
                                          width: 75.adaptSize,
                                          radius: BorderRadius.circular(35.h)),
                                      SizedBox(height: 22.v),
                                      Text("Health Insurance",
                                          style:
                                              theme.textTheme.headlineMedium),
                                      SizedBox(height: 6.v),
                                      Text("$acc",
                                          style:
                                              CustomTextStyles.titleMedium16_1),
                                      SizedBox(height: 19.v),
                                      Container(
                                          width: 249.h,
                                          padding: EdgeInsets.all(8.h),
                                          decoration: BoxDecoration(
                                              color: Colors.red[100],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "Transactions Status:",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary),
                                                TextSpan(
                                                    text: " Pending",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary)
                                              ]),
                                              textAlign: TextAlign.left)),
                                      SizedBox(height: 16.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "150.00",
                                                style: theme
                                                    .textTheme.displaySmall),
                                            TextSpan(
                                                text: "USDINR",
                                                style: CustomTextStyles
                                                    .titleLargeSecondaryContainer_2)
                                          ]),
                                          textAlign: TextAlign.left),
                                      SizedBox(height: 13.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("Card Type",
                                                    style: CustomTextStyles
                                                        .titleMedium_1)),
                                            Text("Debit Card",
                                                style: CustomTextStyles
                                                    .titleMediumBluegray900_4)
                                          ]),
                                      SizedBox(height: 17.v),
                                      Divider(),
                                      SizedBox(height: 14.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.v, bottom: 2.v),
                                                child: Text("Transfer Fee",
                                                    style: CustomTextStyles
                                                        .titleMedium_1)),
                                            RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "0.00",
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900_1),
                                                  TextSpan(
                                                      text: "INR",
                                                      style: theme
                                                          .textTheme.labelSmall)
                                                ]),
                                                textAlign: TextAlign.left)
                                          ])
                                    ])))
                      ])),
                  CustomElevatedButton(
                      text: "Send",
                      margin:
                          EdgeInsets.only(left: 26.h, top: 58.v, right: 26.h),
                      onTap: () {
                        onTapSend(context);
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

  /// Navigates to the healthConfirmationSuccessfulTransferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the healthConfirmationSuccessfulTransferScreen.
  // onTapSend(BuildContext context) {
  //   Navigator.pushNamed(
  //       context, AppRoutes.healthConfirmationSuccessfulTransferScreen);
  // }
  onTapSend(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HealthConfirmationSuccessfulTransferScreen(acc)),
    );
  }
}
