import '../../../core/app_export.dart';/// This class is used in the [banquetcomponent_item_widget] screen.
class BanquetcomponentItemModel {BanquetcomponentItemModel({this.banquetImage, this.paperPlaneIcon, this.banquetText, this.id, }) { banquetImage = banquetImage  ?? ImageConstant.imgRectangle42661;paperPlaneIcon = paperPlaneIcon  ?? ImageConstant.imgPaperPlane1;banquetText = banquetText  ?? "Banquet";id = id  ?? ""; }

String? banquetImage;

String? paperPlaneIcon;

String? banquetText;

String? id;

 }
