import '../../../core/app_export.dart';/// This class is used in the [lawngrid_item_widget] screen.
class LawngridItemModel {LawngridItemModel({this.lawnImage1, this.lawnImage2, this.id, }) { lawnImage1 = lawnImage1  ?? ImageConstant.imgImage14;lawnImage2 = lawnImage2  ?? ImageConstant.imgImage14;id = id  ?? ""; }

String? lawnImage1;

String? lawnImage2;

String? id;

 }
