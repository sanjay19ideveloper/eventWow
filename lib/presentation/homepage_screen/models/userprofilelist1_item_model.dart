import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.userImage, this.bookmark, this.ratingText, this.photographerText, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle4259157x149;bookmark = bookmark  ?? ImageConstant.imgBookmark;ratingText = ratingText  ?? "4.5";photographerText = photographerText  ?? "Photographer";id = id  ?? ""; }

String? userImage;

String? bookmark;

String? ratingText;

String? photographerText;

String? id;

 }
