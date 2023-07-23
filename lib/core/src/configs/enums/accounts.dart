import 'package:flutter_bci_assessment_app/core/core.dart';

enum Accounts {
  user(
    id: 0,
    accountName: AppStrings.user,
  ),
  administration(
    id: 1,
    accountName: AppStrings.administration,
  ),
  manager(
    id: 2,
    accountName: AppStrings.manager,
  );

  static String getAccountNameById({required int branchId}) => Accounts.values
      .where((element) => element.id == branchId)
      .first
      .accountName;

  final int? id;
  final String accountName;

  const Accounts({
    required this.id,
    required this.accountName,
  });
}
