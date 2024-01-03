import 'bloc/profile_saved_one_bloc.dart';
import 'models/profile_saved_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

class ProfileSavedOneScreen extends StatelessWidget {
  const ProfileSavedOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSavedOneBloc>(
      create: (context) => ProfileSavedOneBloc(ProfileSavedOneState(
        profileSavedOneModelObj: ProfileSavedOneModel(),
      ))
        ..add(ProfileSavedOneInitialEvent()),
      child: ProfileSavedOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSavedOneBloc, ProfileSavedOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 101.v,
                right: 20.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUploadRafiki11,
                    height: 331.adaptSize,
                    width: 331.adaptSize,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_profile_saved".tr,
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                  SizedBox(height: 16.v),
                  Opacity(
                    opacity: 0.7,
                    child: Container(
                      width: 298.h,
                      margin: EdgeInsets.only(
                        left: 19.h,
                        right: 17.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style:
                            CustomTextStyles.bodyLargeErrorContainer.copyWith(
                          height: 1.75,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
