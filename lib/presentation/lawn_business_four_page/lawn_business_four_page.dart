import '../lawn_business_four_page/widgets/userprofilesection_item_widget.dart';
import 'bloc/lawn_business_four_bloc.dart';
import 'models/lawn_business_four_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';
import 'package:sanjay_s_application2/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class LawnBusinessFourPage extends StatefulWidget {
  const LawnBusinessFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  LawnBusinessFourPageState createState() => LawnBusinessFourPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LawnBusinessFourBloc>(
      create: (context) => LawnBusinessFourBloc(LawnBusinessFourState(
        lawnBusinessFourModelObj: LawnBusinessFourModel(),
      ))
        ..add(LawnBusinessFourInitialEvent()),
      child: LawnBusinessFourPage(),
    );
  }
}

class LawnBusinessFourPageState extends State<LawnBusinessFourPage>
    with AutomaticKeepAliveClientMixin<LawnBusinessFourPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 129.h,
                      right: 20.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfileSection(context),
                        SizedBox(height: 20.v),
                        CustomOutlinedButton(
                          width: 107.h,
                          text: "msg_view_all_albums".tr,
                          margin: EdgeInsets.only(left: 5.h),
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return BlocSelector<LawnBusinessFourBloc, LawnBusinessFourState,
        LawnBusinessFourModel?>(
      selector: (state) => state.lawnBusinessFourModelObj,
      builder: (context, lawnBusinessFourModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 1,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              lawnBusinessFourModelObj?.userprofilesectionItemList.length ?? 0,
          itemBuilder: (context, index) {
            UserprofilesectionItemModel model =
                lawnBusinessFourModelObj?.userprofilesectionItemList[index] ??
                    UserprofilesectionItemModel();
            return UserprofilesectionItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
