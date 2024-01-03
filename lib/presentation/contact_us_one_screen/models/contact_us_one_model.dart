// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [contact_us_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactUsOneModel extends Equatable {ContactUsOneModel({this.radioList = const []}) {  }

List<String> radioList;

ContactUsOneModel copyWith({List<String>? radioList}) { return ContactUsOneModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
