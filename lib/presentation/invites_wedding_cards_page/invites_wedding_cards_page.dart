import '../invites_wedding_cards_page/widgets/gridsection_item_widget.dart';
import 'bloc/invites_wedding_cards_bloc.dart';
import 'models/gridsection_item_model.dart';
import 'models/invites_wedding_cards_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class InvitesWeddingCardsPage extends StatefulWidget {
  const InvitesWeddingCardsPage({Key? key})
      : super(
          key: key,
        );

  @override
  InvitesWeddingCardsPageState createState() => InvitesWeddingCardsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InvitesWeddingCardsBloc>(
      create: (context) => InvitesWeddingCardsBloc(InvitesWeddingCardsState(
        invitesWeddingCardsModelObj: InvitesWeddingCardsModel(),
      ))
        ..add(InvitesWeddingCardsInitialEvent()),
      child: InvitesWeddingCardsPage(),
    );
  }
}

class InvitesWeddingCardsPageState extends State<InvitesWeddingCardsPage>
    with AutomaticKeepAliveClientMixin<InvitesWeddingCardsPage> {
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
              _buildGridSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGridSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 16.h,
        ),
        child: BlocSelector<InvitesWeddingCardsBloc, InvitesWeddingCardsState,
            InvitesWeddingCardsModel?>(
          selector: (state) => state.invitesWeddingCardsModelObj,
          builder: (context, invitesWeddingCardsModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 171.v,
                crossAxisCount: 2,
                mainAxisSpacing: 13.h,
                crossAxisSpacing: 13.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount:
                  invitesWeddingCardsModelObj?.gridsectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                GridsectionItemModel model =
                    invitesWeddingCardsModelObj?.gridsectionItemList[index] ??
                        GridsectionItemModel();
                return GridsectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
