// ignore_for_file: must_be_immutable

part of 'vendor_map_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VendorMapLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VendorMapLocationEvent extends Equatable {}

/// Event that is dispatched when the VendorMapLocation widget is first created.
class VendorMapLocationInitialEvent extends VendorMapLocationEvent {
  @override
  List<Object?> get props => [];
}
