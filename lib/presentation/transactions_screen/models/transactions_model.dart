// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'transactionhistory_item_model.dart';/// This class defines the variables used in the [transactions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsModel extends Equatable {TransactionsModel({this.transactionhistoryItemList = const []}) {  }

List<TransactionhistoryItemModel> transactionhistoryItemList;

TransactionsModel copyWith({List<TransactionhistoryItemModel>? transactionhistoryItemList}) { return TransactionsModel(
transactionhistoryItemList : transactionhistoryItemList ?? this.transactionhistoryItemList,
); } 
@override List<Object?> get props => [transactionhistoryItemList];
 }
