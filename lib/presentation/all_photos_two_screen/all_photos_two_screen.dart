import '../all_photos_two_screen/widgets/allphotostwo_item_widget.dart';
import 'bloc/all_photos_two_bloc.dart';
import 'models/all_photos_two_model.dart';
import 'models/allphotostwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sanjay_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:sanjay_s_application2/widgets/app_bar/custom_app_bar.dart';

class AllPhotosTwoScreen extends StatelessWidget {
  const AllPhotosTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllPhotosTwoBloc>(
      create: (context) => AllPhotosTwoBloc(AllPhotosTwoState(
        allPhotosTwoModelObj: AllPhotosTwoModel(),
      ))
        ..add(AllPhotosTwoInitialEvent()),
      child: AllPhotosTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_the_cine_click_110".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 19.v),
              _buildAllPhotosTwo(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 42.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_all_photos".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllPhotosTwo(BuildContext context) {
    return Expanded(
      child:
          BlocSelector<AllPhotosTwoBloc, AllPhotosTwoState, AllPhotosTwoModel?>(
        selector: (state) => state.allPhotosTwoModelObj,
        builder: (context, allPhotosTwoModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 163.v,
              crossAxisCount: 1,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: allPhotosTwoModelObj?.allphotostwoItemList.length ?? 0,
            itemBuilder: (context, index) {
              AllphotostwoItemModel model =
                  allPhotosTwoModelObj?.allphotostwoItemList[index] ??
                      AllphotostwoItemModel();
              return AllphotostwoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
