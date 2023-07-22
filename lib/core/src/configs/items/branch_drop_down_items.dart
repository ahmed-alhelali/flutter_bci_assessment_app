import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/enums/branches.dart';

List<DropDownValueModel> branchDropDownItems = List.generate(
  Branches.values.length,
  (index) => DropDownValueModel(
    name: Branches.getBranchNameById(branchId: index).toString(),
    value: Branches.getBranchNameById(branchId: index).toString(),
  ),
);
