import 'package:flutter/material.dart';
import 'package:tanisha_s_application14/core/app_export.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_image_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:tanisha_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_bottom_bar.dart';
import 'package:tanisha_s_application14/widgets/custom_search_view.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class AtmLocatorScreen extends StatelessWidget {
  _launchURLBrowser() async {
    var url = Uri.parse("https://www.geeksforgeeks.org/");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLApp() async {
    var url = Uri.parse("https://www.google.co.in/maps/preview");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  AtmLocatorScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 76.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 29.h, top: 4.v, bottom: 4.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle1(
                    text: "Atm Locator", margin: EdgeInsets.only(left: 64.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgUserOnprimarycontainer,
                      margin:
                          EdgeInsets.symmetric(horizontal: 29.h, vertical: 4.v))
                ]),
            body: GestureDetector(
              onTap: () {
                _launchURLApp();
              },
              child: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup1005),
                          fit: BoxFit.cover)),
                  child: GestureDetector(
                    onTap: () {
                      _launchURLApp();
                    },
                    child: GestureDetector(
                      onTap: () {
                        _launchURLApp();
                      },
                      child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 29.h, vertical: 41.v),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomSearchView(
                                    controller: searchController,
                                    hintText: "Search location",
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.h, 15.v, 19.h, 15.v),
                                        child: InkWell(
                                            onTap: () {
                                              _launchURLApp();
                                            },
                                            // child: CustomImageView(
                                            //     svgPath: ImageConstant
                                            //         .imgSearchGray50001),
                                            child: IconButton(
                                              onPressed: () {
                                                _launchURLApp();
                                              },
                                              icon: Icon(
                                                Icons.search,
                                                color: Colors.grey[500],
                                                // Customize the color
                                                size:
                                                    24.0, // Customize the size
                                              ),
                                            ))),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 48.v),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(right: 15.h),
                                        child: IconButton(
                                            onPressed: () {
                                              searchController.clear();
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600))),
                                    borderDecoration:
                                        SearchViewStyleHelper.outlineBlueGray,
                                    fillColor: appTheme.whiteA700),
                                SizedBox(height: 46.v),
                                GestureDetector(
                                  onTap: () {
                                    _launchURLApp();
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFrame7840,
                                      height: 79.v,
                                      width: 167.h),
                                ),
                                SizedBox(height: 46.v),
                                GestureDetector(
                                  onTap: () {
                                    _launchURLApp();
                                  },
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFrame7839,
                                      height: 157.v,
                                      width: 143.h),
                                ),
                                SizedBox(height: 46.v),
                                GestureDetector(
                                  onTap: () {
                                    _launchURLApp();
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 43.h, vertical: 11.v),
                                      decoration: AppDecoration.outlineIndigoF
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector,
                                                height: 24.v,
                                                width: 23.h,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 8.v)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 22.h,
                                                    top: 8.v,
                                                    bottom: 8.v),
                                                child: Text("540 m",
                                                    style: CustomTextStyles
                                                        .titleMediumWhiteA700_1)),
                                            Spacer(),
                                            SizedBox(
                                                height: 38.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v,
                                                    color: appTheme.whiteA700)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgClockWhiteA700,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 43.h,
                                                    top: 5.v,
                                                    bottom: 9.v)),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    20.h, 8.v, 4.h, 8.v),
                                                child: Text("10 min",
                                                    style: CustomTextStyles
                                                        .titleMediumWhiteA700_1))
                                          ])),
                                ),
                                SizedBox(height: 9.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 32.h, vertical: 17.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgHomePrimary23x26,
                                          height: 23.v,
                                          width: 26.h,
                                          margin: EdgeInsets.only(
                                              top: 11.v, bottom: 10.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 25.h, top: 1.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 7.h),
                                                    child: Text("Your Location",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray900_3)),
                                                SizedBox(height: 4.v),
                                                Text(
                                                    "East Canal Street 18, NYC",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray5000116)
                                              ]))
                                    ])),
                                SizedBox(height: 9.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 34.h, vertical: 17.v),
                                    decoration: AppDecoration
                                        .outlineBluegray500111
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgLocationPrimary28x22,
                                          height: 28.v,
                                          width: 22.h,
                                          margin: EdgeInsets.only(
                                              top: 8.v, bottom: 9.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 27.h, top: 3.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Text("ATM Nearby",
                                                        style: CustomTextStyles
                                                            .titleMediumBluegray900_3)),
                                                SizedBox(height: 2.v),
                                                Text(
                                                    "Fintech Canal Branch, NYC",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray5000116)
                                              ]))
                                    ])),
                                SizedBox(height: 4.v)
                              ])),
                    ),
                  )),
            ),
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
}
