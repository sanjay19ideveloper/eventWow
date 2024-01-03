// ignore_for_file: must_be_immutable

part of 'wishlist_one_bloc.dart';

/// Represents the state of WishlistOne in the application.
class WishlistOneState extends Equatable {
  WishlistOneState({this.wishlistOneModelObj});

  WishlistOneModel? wishlistOneModelObj;

  @override
  List<Object?> get props => [
        wishlistOneModelObj,
      ];
  WishlistOneState copyWith({WishlistOneModel? wishlistOneModelObj}) {
    return WishlistOneState(
      wishlistOneModelObj: wishlistOneModelObj ?? this.wishlistOneModelObj,
    );
  }
}
