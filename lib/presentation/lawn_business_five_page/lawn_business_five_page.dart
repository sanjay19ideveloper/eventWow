import '../lawn_business_five_page/widgets/lawngrid_item_widget.dart';
import 'bloc/lawn_business_five_bloc.dart';
import 'models/lawn_business_five_model.dart';
import 'models/lawngrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LawnBusinessFivePage extends StatefulWidget {
  const LawnBusinessFivePage({Key? key})
      : super(
          key: key,
        );

  @override
  LawnBusinessFivePageState createState() => LawnBusinessFivePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LawnBusinessFiveBloc>(
      create: (context) => LawnBusinessFiveBloc(LawnBusinessFiveState(
        lawnBusinessFiveModelObj: LawnBusinessFiveModel(),
      ))
        ..add(LawnBusinessFiveInitialEvent()),
      child: LawnBusinessFivePage(),
    );
  }
}

class LawnBusinessFivePageState extends State<LawnBusinessFivePage>
    with AutomaticKeepAliveClientMixin<LawnBusinessFivePage> {
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
              SizedBox(height: 21.v),
              _buildLawnGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLawnGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 12.h,
      ),
      child: BlocSelector<LawnBusinessFiveBloc, LawnBusinessFiveState,
          LawnBusinessFiveModel?>(
        selector: (state) => state.lawnBusinessFiveModelObj,
        builder: (context, lawnBusinessFiveModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 172.v,
              crossAxisCount: 2,
              mainAxisSpacing: 11.h,
              crossAxisSpacing: 11.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: lawnBusinessFiveModelObj?.lawngridItemList.length ?? 0,
            itemBuilder: (context, index) {
              LawngridItemModel model =
                  lawnBusinessFiveModelObj?.lawngridItemList[index] ??
                      LawngridItemModel();
              return LawngridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
