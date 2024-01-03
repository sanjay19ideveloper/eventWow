import '../../../core/app_export.dart';/// This class is used in the [userprofilegrid_item_widget] screen.
class UserprofilegridItemModel {UserprofilegridItemModel({this.image, this.bookmarkIcon, this.ratingText, this.photographerText, this.id, }) { image = image  ?? ImageConstant.imgRectangle4259170x161;bookmarkIcon = bookmarkIcon  ?? ImageConstant.imgBookmark;ratingText = ratingText  ?? "4.5";photographerText = photographerText  ?? "Photographer";id = id  ?? ""; }

String? image;

String? bookmarkIcon;

String? ratingText;

String? photographerText;

String? id;

 }
