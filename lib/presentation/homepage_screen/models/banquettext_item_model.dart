import '../../../core/app_export.dart';/// This class is used in the [banquettext_item_widget] screen.
class BanquettextItemModel {BanquettextItemModel({this.banquetImage, this.banquetText, this.id, }) { banquetImage = banquetImage  ?? ImageConstant.imgEllipse150;banquetText = banquetText  ?? "Banquet";id = id  ?? ""; }

String? banquetImage;

String? banquetText;

String? id;

 }
