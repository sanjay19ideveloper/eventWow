import '../upcoming_bookings_page/widgets/userprofile6_item_widget.dart';
import 'bloc/upcoming_bookings_bloc.dart';
import 'models/upcoming_bookings_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UpcomingBookingsPage extends StatefulWidget {
  const UpcomingBookingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  UpcomingBookingsPageState createState() => UpcomingBookingsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UpcomingBookingsBloc>(
      create: (context) => UpcomingBookingsBloc(UpcomingBookingsState(
        upcomingBookingsModelObj: UpcomingBookingsModel(),
      ))
        ..add(UpcomingBookingsInitialEvent()),
      child: UpcomingBookingsPage(),
    );
  }
}

class UpcomingBookingsPageState extends State<UpcomingBookingsPage>
    with AutomaticKeepAliveClientMixin<UpcomingBookingsPage> {
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
                      _buildUserProfile(context),
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
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<UpcomingBookingsBloc, UpcomingBookingsState,
        UpcomingBookingsModel?>(
      selector: (state) => state.upcomingBookingsModelObj,
      builder: (context, upcomingBookingsModelObj) {
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
          itemCount: upcomingBookingsModelObj?.userprofile6ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile6ItemModel model =
                upcomingBookingsModelObj?.userprofile6ItemList[index] ??
                    Userprofile6ItemModel();
            return Userprofile6ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
