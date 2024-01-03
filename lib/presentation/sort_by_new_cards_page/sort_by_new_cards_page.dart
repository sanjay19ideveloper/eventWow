import '../sort_by_new_cards_page/widgets/gridsection1_item_widget.dart';
import 'bloc/sort_by_new_cards_bloc.dart';
import 'models/gridsection1_item_model.dart';
import 'models/sort_by_new_cards_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SortByNewCardsPage extends StatefulWidget {
  const SortByNewCardsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SortByNewCardsPageState createState() => SortByNewCardsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SortByNewCardsBloc>(
      create: (context) => SortByNewCardsBloc(SortByNewCardsState(
        sortByNewCardsModelObj: SortByNewCardsModel(),
      ))
        ..add(SortByNewCardsInitialEvent()),
      child: SortByNewCardsPage(),
    );
  }
}

class SortByNewCardsPageState extends State<SortByNewCardsPage>
    with AutomaticKeepAliveClientMixin<SortByNewCardsPage> {
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
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildGridSection(context),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          right: 80.h,
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
  Widget _buildGridSection(BuildContext context) {
    return BlocSelector<SortByNewCardsBloc, SortByNewCardsState,
        SortByNewCardsModel?>(
      selector: (state) => state.sortByNewCardsModelObj,
      builder: (context, sortByNewCardsModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 13.h,
            crossAxisSpacing: 13.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: sortByNewCardsModelObj?.gridsection1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Gridsection1ItemModel model =
                sortByNewCardsModelObj?.gridsection1ItemList[index] ??
                    Gridsection1ItemModel();
            return Gridsection1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
