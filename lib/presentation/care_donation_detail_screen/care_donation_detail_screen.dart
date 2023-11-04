import 'package:flutter/material.dart';import 'package:tanisha_s_application14/core/app_export.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_2.dart';import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';import 'package:tanisha_s_application14/widgets/custom_elevated_button.dart';import 'package:tanisha_s_application14/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class CareDonationDetailScreen extends StatelessWidget {CareDonationDetailScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 77.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 30.h, top: 4.v, bottom: 4.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarSubtitle2(text: "Donation"), actions: [AppbarImage1(svgPath: ImageConstant.imgCheckmark, margin: EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))]), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 51.v), Expanded(child: SingleChildScrollView(child: Container(height: 639.v, width: 368.h, margin: EdgeInsets.only(left: 29.h, right: 29.h, bottom: 5.v), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(height: 227.v, width: 367.h, decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(10.h), boxShadow: [BoxShadow(color: appTheme.gray50001.withOpacity(0.2), spreadRadius: 2.h, blurRadius: 2.h, offset: Offset(1, 5))]))), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle1467221x368, height: 154.v, width: 368.h, radius: BorderRadius.vertical(top: Radius.circular(10.h))), SizedBox(height: 6.v), Text("Donate for Cancer Patients", style: CustomTextStyles.titleLargeBluegray900_1), SizedBox(height: 8.v), Text("Arrange by Care Club", style: CustomTextStyles.bodyMediumPink200), SizedBox(height: 58.v), Container(padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 49.v, width: 50.h, padding: EdgeInsets.all(13.h), decoration: IconButtonStyleHelper.fillTeal, child: CustomImageView(svgPath: ImageConstant.imgCheckmarkTealA70001)), Container(height: 36.v, width: 159.h, margin: EdgeInsets.only(left: 17.h, top: 8.v, bottom: 4.v), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: Text("Care Foundation", style: CustomTextStyles.titleLargeBluegray900_1)), Align(alignment: Alignment.bottomLeft, child: Text("Verified Foundation", style: CustomTextStyles.bodyMediumBluegray90013))])), CustomImageView(svgPath: ImageConstant.imgCheckmarkPrimary, height: 13.adaptSize, width: 13.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 15.v, bottom: 21.v))])), Padding(padding: EdgeInsets.only(left: 62.h, top: 63.v), child: Text("Participants", style: CustomTextStyles.titleMediumBluegray90019)), SizedBox(height: 16.v), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse190, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), CustomImageView(imagePath: ImageConstant.imgEllipse191, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), CustomImageView(imagePath: ImageConstant.imgEllipse192, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), CustomImageView(imagePath: ImageConstant.imgEllipse193, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 14.v), decoration: AppDecoration.outlineGray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Text("9+", style: CustomTextStyles.bodyMediumGray700_1))])), CustomElevatedButton(text: "Donate Now", margin: EdgeInsets.only(left: 26.h, top: 61.v, right: 26.h), onTap: () {onTapDonatenow(context);}, alignment: Alignment.center)]))]))))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the donationPasswordScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the donationPasswordScreen.
onTapDonatenow(BuildContext context) { Navigator.pushNamed(context, AppRoutes.donationPasswordScreen); } 
 }
