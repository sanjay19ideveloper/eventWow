// ignore_for_file: must_be_immutable

part of 'vendor_profile_bloc.dart';

/// Represents the state of VendorProfile in the application.
class VendorProfileState extends Equatable {
  VendorProfileState({this.vendorProfileModelObj});

  VendorProfileModel? vendorProfileModelObj;

  @override
  List<Object?> get props => [
        vendorProfileModelObj,
      ];
  VendorProfileState copyWith({VendorProfileModel? vendorProfileModelObj}) {
    return VendorProfileState(
      vendorProfileModelObj:
          vendorProfileModelObj ?? this.vendorProfileModelObj,
    );
  }
}
