import '../../../core/app_export.dart';/// This class is used in the [transactionhistory_item_widget] screen.
class TransactionhistoryItemModel {TransactionhistoryItemModel({this.bankTransferText, this.salaryText, this.amountText, this.dateText, this.id, }) { bankTransferText = bankTransferText  ?? "Bank Transfer";salaryText = salaryText  ?? "Transfer form bank";amountText = amountText  ?? "+ 2500.95";dateText = dateText  ?? "July 14, 2022";id = id  ?? ""; }

String? bankTransferText;

String? salaryText;

String? amountText;

String? dateText;

String? id;

 }
