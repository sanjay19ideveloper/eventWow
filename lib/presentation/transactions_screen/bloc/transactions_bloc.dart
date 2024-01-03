import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transactionhistory_item_model.dart';
import 'package:sanjay_s_application2/presentation/transactions_screen/models/transactions_model.dart';
part 'transactions_event.dart';
part 'transactions_state.dart';

/// A bloc that manages the state of a Transactions according to the event that is dispatched to it.
class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  TransactionsBloc(TransactionsState initialState) : super(initialState) {
    on<TransactionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsInitialEvent event,
    Emitter<TransactionsState> emit,
  ) async {
    emit(state.copyWith(
        transactionsModelObj: state.transactionsModelObj?.copyWith(
      transactionhistoryItemList: fillTransactionhistoryItemList(),
    )));
  }

  List<TransactionhistoryItemModel> fillTransactionhistoryItemList() {
    return [
      TransactionhistoryItemModel(
          bankTransferText: "Bank Transfer",
          salaryText: "Transfer form bank",
          amountText: "+ 2500.95",
          dateText: "July 14, 2022"),
      TransactionhistoryItemModel(
          bankTransferText: "Bank Transfer",
          salaryText: "Transfer to bank",
          amountText: "- 2500.95",
          dateText: "July 14, 2022"),
      TransactionhistoryItemModel(
          bankTransferText: "Lakshay",
          salaryText: "Photos Payment",
          amountText: "+ 2500.95",
          dateText: "July 14, 2022"),
      TransactionhistoryItemModel(
          bankTransferText: "Dinesh",
          salaryText: "Decoration Payment",
          amountText: "+ 2500.95",
          dateText: "July 14, 2022")
    ];
  }
}
