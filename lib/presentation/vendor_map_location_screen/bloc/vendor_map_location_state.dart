// ignore_for_file: must_be_immutable

part of 'vendor_map_location_bloc.dart';

/// Represents the state of VendorMapLocation in the application.
class VendorMapLocationState extends Equatable {
  VendorMapLocationState({this.vendorMapLocationModelObj});

  VendorMapLocationModel? vendorMapLocationModelObj;

  @override
  List<Object?> get props => [
        vendorMapLocationModelObj,
      ];
  VendorMapLocationState copyWith(
      {VendorMapLocationModel? vendorMapLocationModelObj}) {
    return VendorMapLocationState(
      vendorMapLocationModelObj:
          vendorMapLocationModelObj ?? this.vendorMapLocationModelObj,
    );
  }
}
