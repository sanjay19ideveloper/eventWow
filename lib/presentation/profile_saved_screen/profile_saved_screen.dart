import 'bloc/profile_saved_bloc.dart';
import 'models/profile_saved_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

class ProfileSavedScreen extends StatelessWidget {
  const ProfileSavedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSavedBloc>(
      create: (context) => ProfileSavedBloc(ProfileSavedState(
        profileSavedModelObj: ProfileSavedModel(),
      ))
        ..add(ProfileSavedInitialEvent()),
      child: ProfileSavedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSavedBloc, ProfileSavedState>(
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
                    imagePath: ImageConstant.imgUploadRafiki1331x331,
                    height: 331.adaptSize,
                    width: 331.adaptSize,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_not_able_to_access".tr,
                    style: CustomTextStyles.titleMediumErrorContainer,
                  ),
                  SizedBox(height: 22.v),
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
