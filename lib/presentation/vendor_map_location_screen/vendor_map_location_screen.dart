import 'bloc/vendor_map_location_bloc.dart';
import 'dart:async';
import 'models/vendor_map_location_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sanjay_s_application2/widgets/custom_icon_button.dart';

class VendorMapLocationScreen extends StatelessWidget {
  VendorMapLocationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<VendorMapLocationBloc>(
      create: (context) => VendorMapLocationBloc(VendorMapLocationState(
        vendorMapLocationModelObj: VendorMapLocationModel(),
      ))
        ..add(VendorMapLocationInitialEvent()),
      child: VendorMapLocationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorMapLocationBloc, VendorMapLocationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 3.v),
                child: Column(
                  children: [
                    SizedBox(
                      height: 720.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          _buildVendorMapLocation(context),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              width: 82.h,
                              child: Text(
                                "lbl_get_direction".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleMediumPoppinsWhiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 58.v,
                              width: 271.h,
                              margin: EdgeInsets.only(bottom: 34.v),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 58.v,
                                      width: 271.h,
                                      padding: EdgeInsets.all(14.h),
                                      decoration:
                                          AppDecoration.outlineIndigoF.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: CustomIconButton(
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        decoration:
                                            IconButtonStyleHelper.fillIndigoA,
                                        alignment: Alignment.centerRight,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowLeft,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 60.h),
                                      child: Text(
                                        "lbl_get_direction".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .titleMediumWhiteA700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    SizedBox(
                      width: 97.h,
                      child: Divider(
                        color: appTheme.blueGray10003,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_map_location".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildVendorMapLocation(BuildContext context) {
    return SizedBox(
      height: 719.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
