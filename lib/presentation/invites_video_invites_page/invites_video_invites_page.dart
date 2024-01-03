import '../invites_video_invites_page/widgets/fairylightsgrid_item_widget.dart';
import 'bloc/invites_video_invites_bloc.dart';
import 'models/fairylightsgrid_item_model.dart';
import 'models/invites_video_invites_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InvitesVideoInvitesPage extends StatefulWidget {
  const InvitesVideoInvitesPage({Key? key})
      : super(
          key: key,
        );

  @override
  InvitesVideoInvitesPageState createState() => InvitesVideoInvitesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InvitesVideoInvitesBloc>(
      create: (context) => InvitesVideoInvitesBloc(InvitesVideoInvitesState(
        invitesVideoInvitesModelObj: InvitesVideoInvitesModel(),
      ))
        ..add(InvitesVideoInvitesInitialEvent()),
      child: InvitesVideoInvitesPage(),
    );
  }
}

class InvitesVideoInvitesPageState extends State<InvitesVideoInvitesPage>
    with AutomaticKeepAliveClientMixin<InvitesVideoInvitesPage> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFairyLightsGrid(context),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 77.h,
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFairyLightsGrid(BuildContext context) {
    return BlocSelector<InvitesVideoInvitesBloc, InvitesVideoInvitesState,
        InvitesVideoInvitesModel?>(
      selector: (state) => state.invitesVideoInvitesModelObj,
      builder: (context, invitesVideoInvitesModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 13.h,
            crossAxisSpacing: 13.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              invitesVideoInvitesModelObj?.fairylightsgridItemList.length ?? 0,
          itemBuilder: (context, index) {
            FairylightsgridItemModel model =
                invitesVideoInvitesModelObj?.fairylightsgridItemList[index] ??
                    FairylightsgridItemModel();
            return FairylightsgridItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
