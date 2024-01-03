import '../sort_by_trending_page/widgets/gridsection2_item_widget.dart';
import 'bloc/sort_by_trending_bloc.dart';
import 'models/gridsection2_item_model.dart';
import 'models/sort_by_trending_model.dart';
import 'package:flutter/material.dart';
import 'package:sanjay_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SortByTrendingPage extends StatefulWidget {
  const SortByTrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  SortByTrendingPageState createState() => SortByTrendingPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SortByTrendingBloc>(
      create: (context) => SortByTrendingBloc(SortByTrendingState(
        sortByTrendingModelObj: SortByTrendingModel(),
      ))
        ..add(SortByTrendingInitialEvent()),
      child: SortByTrendingPage(),
    );
  }
}

class SortByTrendingPageState extends State<SortByTrendingPage>
    with AutomaticKeepAliveClientMixin<SortByTrendingPage> {
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
    return BlocSelector<SortByTrendingBloc, SortByTrendingState,
        SortByTrendingModel?>(
      selector: (state) => state.sortByTrendingModelObj,
      builder: (context, sortByTrendingModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 13.h,
            crossAxisSpacing: 13.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: sortByTrendingModelObj?.gridsection2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Gridsection2ItemModel model =
                sortByTrendingModelObj?.gridsection2ItemList[index] ??
                    Gridsection2ItemModel();
            return Gridsection2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
