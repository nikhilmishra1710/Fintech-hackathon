import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class EidGiftConfirmationSuccessfulTransferScreen extends StatelessWidget {
  var name, accNo, amt;
  EidGiftConfirmationSuccessfulTransferScreen(this.name, this.accNo, this.amt,
      {Key? key})
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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Confirmation"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgCheckmark,
                      margin:
                          EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Transfer Successful!",
                          style: theme.textTheme.headlineLarge),
                      Container(
                          width: 287.h,
                          margin: EdgeInsets.only(
                              left: 39.h, top: 15.v, right: 40.h),
                          child: Text(
                              "Your money has been transferred successfully",
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
                          margin: EdgeInsets.fromLTRB(25.h, 72.v, 25.h, 3.v),
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
                                                imagePath:
                                                    ImageConstant.imgEllipse175,
                                                height: 75.adaptSize,
                                                width: 75.adaptSize,
                                                radius: BorderRadius.circular(
                                                  37.h,
                                                ),
                                              ),
                                              _buildEidGiftSection(
                                                  context, name, accNo, amt),
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the eidGiftSuccessfulTransferReciptScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the eidGiftSuccessfulTransferReciptScreen.
  onTapViewreceipt(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.eidGiftSuccessfulTransferReciptScreen);
  }
}

Widget _buildEidGiftSection(BuildContext context, name, accNo, amt) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 30.h,
      vertical: 53.v,
    ),
    decoration: AppDecoration.fillWhiteA.copyWith(
      borderRadius: BorderRadiusStyle.customBorderTL20,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Eid Gift",
          style: CustomTextStyles.titleMedium16_1,
        ),
        SizedBox(height: 17.v),
        Text(
          "$accNo",
          style: CustomTextStyles.titleMedium16_1,
        ),
        SizedBox(height: 21.v),
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
        SizedBox(height: 18.v),
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
        SizedBox(height: 20.v),
        _buildTransferFee(
          context,
          transferFeeText: "Card Type",
          priceText: "Debit Card",
        ),
        SizedBox(height: 17.v),
        Divider(),
        SizedBox(height: 19.v),
        _buildTransferFee(
          context,
          transferFeeText: "Transfer Fee",
          priceText: "0.00INR",
        ),
        SizedBox(height: 2.v),
      ],
    ),
  );
}

/// Common widget
Widget _buildTransferFee(
  BuildContext context, {
  required String transferFeeText,
  required String priceText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        transferFeeText,
        style: CustomTextStyles.titleMediumPink200.copyWith(
          color: appTheme.pink200,
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "0.00",
              style: CustomTextStyles.titleMediumBluegray90016_2,
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
