import '../../../core/app_export.dart';/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {UserprofilelistItemModel({this.userImage1, this.userImage2, this.userText1, this.userText2, this.userImage3, this.userText3, this.userText4, this.userText5, this.id, }) { userImage1 = userImage1  ?? ImageConstant.imgRectangle4264;userImage2 = userImage2  ?? ImageConstant.imgBookmark;userText1 = userText1  ?? "Lorem ipsum studio";userText2 = userText2  ?? "MG Road";userImage3 = userImage3  ?? ImageConstant.imgStarSymbolIconYellowA700;userText3 = userText3  ?? "4.5 (132)";userText4 = userText4  ?? "₹ 60,000";userText5 = userText5  ?? "per day";id = id  ?? ""; }

String? userImage1;

String? userImage2;

String? userText1;

String? userText2;

String? userImage3;

String? userText3;

String? userText4;

String? userText5;

String? id;

 }
