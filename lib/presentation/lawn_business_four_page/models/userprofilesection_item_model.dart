import '../../../core/app_export.dart';/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {UserprofilesectionItemModel({this.userImage, this.userImage1, this.userText, this.userText1, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle4267;userImage1 = userImage1  ?? ImageConstant.imgRectangle4279;userText = userText  ?? "110";userText1 = userText1  ?? "Lawns";id = id  ?? ""; }

String? userImage;

String? userImage1;

String? userText;

String? userText1;

String? id;

 }
