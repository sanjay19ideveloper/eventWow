import '../../../core/app_export.dart';/// This class is used in the [text_item_widget] screen.
class TextItemModel {TextItemModel({this.image, this.text, this.id, }) { image = image  ?? ImageConstant.imgRectangle42591;text = text  ?? "Shaalimar";id = id  ?? ""; }

String? image;

String? text;

String? id;

 }
