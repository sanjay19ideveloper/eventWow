import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.movieTitle, this.moviePrice, this.priceUnit, this.location, this.id, }) { movieTitle = movieTitle  ?? "The Cine Click";moviePrice = moviePrice  ?? "₹50,000 ";priceUnit = priceUnit  ?? "per day";location = location  ?? "Mumbai, Maharashta";id = id  ?? ""; }

String? movieTitle;

String? moviePrice;

String? priceUnit;

String? location;

String? id;

 }
