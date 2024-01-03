import '../../../core/app_export.dart';/// This class is used in the [banquetlist_item_widget] screen.
class BanquetlistItemModel {BanquetlistItemModel({this.banquetImage, this.banquetText, this.id, }) { banquetImage = banquetImage  ?? ImageConstant.imgEllipse150;banquetText = banquetText  ?? "Banquet";id = id  ?? ""; }

String? banquetImage;

String? banquetText;

String? id;

 }
