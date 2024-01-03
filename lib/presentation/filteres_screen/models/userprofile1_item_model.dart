import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.image, this.title, this.price, this.duration, this.location, this.id, }) { image = image  ?? ImageConstant.imgRectangle4259;title = title  ?? "The Cine Click";price = price  ?? "₹50,000 ";duration = duration  ?? "per day";location = location  ?? "Mumbai, Maharashta";id = id  ?? ""; }

String? image;

String? title;

String? price;

String? duration;

String? location;

String? id;

 }
