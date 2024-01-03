// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [contact_us_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactUsModel extends Equatable {ContactUsModel({this.radioList = const []}) {  }

List<String> radioList;

ContactUsModel copyWith({List<String>? radioList}) { return ContactUsModel(
radioList : radioList ?? this.radioList,
); } 
@override List<Object?> get props => [radioList];
 }
