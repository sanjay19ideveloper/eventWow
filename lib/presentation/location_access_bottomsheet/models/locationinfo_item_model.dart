import '../../../core/app_export.dart';/// This class is used in the [locationinfo_item_widget] screen.
class LocationinfoItemModel {LocationinfoItemModel({this.hotelName, this.address, this.distance, this.id, }) { hotelName = hotelName  ?? "Elenora Hotel";address = address  ?? "6 Glendale St. Worcester, MA 01604";distance = distance  ?? "2.9 km";id = id  ?? ""; }

String? hotelName;

String? address;

String? distance;

String? id;

 }
