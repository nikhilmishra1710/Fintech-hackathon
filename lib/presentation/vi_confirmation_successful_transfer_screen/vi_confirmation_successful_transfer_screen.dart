import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ViConfirmationSuccessfulTransferScreen extends StatelessWidget {
  var amt;
  ViConfirmationSuccessfulTransferScreen(this.amt, {Key? key})
      : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 77.h,
                leading: AppbarImage(
                    imagePath: ImageConstant.imgProfileIndigoA20001,
                    margin: EdgeInsets.only(left: 30.h, top: 5.v, bottom: 5.v)),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 28.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 205.h,
                          child: Text(
                              "Your recharge has been tranfered successfuly",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumPink200
                                  .copyWith(height: 1.47))),
                      SizedBox(height: 69.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage160,
                          height: 302.v,
                          width: 367.h),
                      CustomElevatedButton(
                          text: "View Receipt",
                          margin: EdgeInsets.fromLTRB(27.h, 72.v, 25.h, 3.v),
                          onTap: () {
                            //onTapViewreceipt(context);

                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    width: double.maxFinite,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgDownload375x75,
                                                height: 75.adaptSize,
                                                width: 75.adaptSize,
                                                radius: BorderRadius.circular(
                                                  35.h,
                                                ),
                                              ),
                                              _buildVIConfirmationColumn(
                                                  context, amt),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          })
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Navigates to the viConfirmationSuccessfulTransferReciptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the viConfirmationSuccessfulTransferReciptScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.viConfirmationSuccessfulTransferReciptScreen);
  }
}

Widget _buildVIConfirmationColumn(BuildContext context, amt) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 29.h,
      vertical: 54.v,
    ),
    decoration: AppDecoration.fillWhiteA.copyWith(
      borderRadius: BorderRadiusStyle.customBorderTL20,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "VI",
          style: theme.textTheme.headlineMedium,
        ),
        SizedBox(height: 8.v),
        Text(
          "+1 123 3698 789",
          style: CustomTextStyles.titleMedium16_1,
        ),
        SizedBox(height: 13.v),
        Container(
          width: 249.h,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineBluegray500112.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Transactions Status:",
                  style: CustomTextStyles.titleMediumTealA7000116,
                ),
                TextSpan(
                  text: " Paid ",
                  style: CustomTextStyles.titleMediumTealA7000116,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 23.v),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "$amt",
                style: theme.textTheme.displaySmall,
              ),
              TextSpan(
                text: "INR",
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 25.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Network",
          price: "VI",
        ),
        SizedBox(height: 18.v),
        Divider(),
        SizedBox(height: 17.v),
        _buildTransferFeeRow(
          context,
          transferFee: "Transfer Fee",
          price: "0.00INR",
        ),
      ],
    ),
  );
}

/// Common widget
Widget _buildTransferFeeRow(
  BuildContext context, {
  required String transferFee,
  required String price,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        transferFee,
        style: CustomTextStyles.titleMediumPink200.copyWith(
          color: appTheme.pink200,
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "0.00",
              style: CustomTextStyles.titleMediumBluegray900_2,
            ),
            TextSpan(
              text: "INR",
              style: theme.textTheme.labelSmall,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    ],
  );
}
