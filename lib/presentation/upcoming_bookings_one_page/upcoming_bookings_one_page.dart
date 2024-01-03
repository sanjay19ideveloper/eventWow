import '../upcoming_bookings_one_page/widgets/userprofilesection1_item_widget.dart';
import 'bloc/upcoming_bookings_one_bloc.dart';
import 'models/upcoming_bookings_one_model.dart';
import 'models/userprofilesection1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UpcomingBookingsOnePage extends StatefulWidget {
  const UpcomingBookingsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  UpcomingBookingsOnePageState createState() => UpcomingBookingsOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UpcomingBookingsOneBloc>(
      create: (context) => UpcomingBookingsOneBloc(UpcomingBookingsOneState(
        upcomingBookingsOneModelObj: UpcomingBookingsOneModel(),
      ))
        ..add(UpcomingBookingsOneInitialEvent()),
      child: UpcomingBookingsOnePage(),
    );
  }
}

class UpcomingBookingsOnePageState extends State<UpcomingBookingsOnePage>
    with AutomaticKeepAliveClientMixin<UpcomingBookingsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUserProfileSection(context),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 84.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_photographer".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            Text(
                              "lbl_decoration".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return BlocSelector<UpcomingBookingsOneBloc, UpcomingBookingsOneState,
        UpcomingBookingsOneModel?>(
      selector: (state) => state.upcomingBookingsOneModelObj,
      builder: (context, upcomingBookingsOneModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount:
              upcomingBookingsOneModelObj?.userprofilesection1ItemList.length ??
                  0,
          itemBuilder: (context, index) {
            Userprofilesection1ItemModel model = upcomingBookingsOneModelObj
                    ?.userprofilesection1ItemList[index] ??
                Userprofilesection1ItemModel();
            return Userprofilesection1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
