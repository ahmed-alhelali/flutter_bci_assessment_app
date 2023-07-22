import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/enums/accounts.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/enums/branches.dart';

List<DropDownValueModel> accountsDropDownItems = List.generate(
  Branches.values.length,
  (index) => DropDownValueModel(
    name: Accounts.getAccountNameById(branchId: index).toString(),
    value: Accounts.getAccountNameById(branchId: index).toString(),
  ),
);
