// ignore_for_file: must_be_immutable

part of 'add_adresss_bloc.dart';

/// Represents the state of AddAdresss in the application.
class AddAdresssState extends Equatable {
  AddAdresssState({
    this.addressController,
    this.localityTownValueController,
    this.cityController,
    this.pincodeController,
    this.stateValueController,
    this.addAdresssModelObj,
  });

  TextEditingController? addressController;

  TextEditingController? localityTownValueController;

  TextEditingController? cityController;

  TextEditingController? pincodeController;

  TextEditingController? stateValueController;

  AddAdresssModel? addAdresssModelObj;

  @override
  List<Object?> get props => [
        addressController,
        localityTownValueController,
        cityController,
        pincodeController,
        stateValueController,
        addAdresssModelObj,
      ];
  AddAdresssState copyWith({
    TextEditingController? addressController,
    TextEditingController? localityTownValueController,
    TextEditingController? cityController,
    TextEditingController? pincodeController,
    TextEditingController? stateValueController,
    AddAdresssModel? addAdresssModelObj,
  }) {
    return AddAdresssState(
      addressController: addressController ?? this.addressController,
      localityTownValueController:
          localityTownValueController ?? this.localityTownValueController,
      cityController: cityController ?? this.cityController,
      pincodeController: pincodeController ?? this.pincodeController,
      stateValueController: stateValueController ?? this.stateValueController,
      addAdresssModelObj: addAdresssModelObj ?? this.addAdresssModelObj,
    );
  }
}
