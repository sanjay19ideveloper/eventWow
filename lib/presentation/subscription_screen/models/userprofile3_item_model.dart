import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.starterText, this.priceText, this.durationText, this.placeholderText1, this.placeholderText2, this.placeholderText3, this.placeholderText4, this.id, }) { userImage = userImage  ?? ImageConstant.imgPaperPlane1;starterText = starterText  ?? "STARTER";priceText = priceText  ?? "Rs. 600 ";durationText = durationText  ?? "For 3 monts";placeholderText1 = placeholderText1  ?? "The lorem ipsum is a placeholder ";placeholderText2 = placeholderText2  ?? "The lorem ipsum is a placeholder text used in publishing and graphic design";placeholderText3 = placeholderText3  ?? "The lorem ipsum is a placeholder ";placeholderText4 = placeholderText4  ?? "The lorem ipsum is a placeholder text used in publishing and graphic design";id = id  ?? ""; }

String? userImage;

String? starterText;

String? priceText;

String? durationText;

String? placeholderText1;

String? placeholderText2;

String? placeholderText3;

String? placeholderText4;

String? id;

 }
