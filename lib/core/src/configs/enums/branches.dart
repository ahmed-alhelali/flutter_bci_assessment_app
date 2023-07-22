import 'package:flutter_bci_assessment_app/core/core.dart';

enum Branches {
  abha(
    id: 0,
    branchName: AppStrings.abha,
  ),
  jizan(
    id: 1,
    branchName: AppStrings.jizan,
  ),
  badr(
    id: 2,
    branchName: AppStrings.badr,
  );

  static String getBranchNameById({required int branchId}) => Branches.values
      .where((element) => element.id == branchId)
      .first
      .branchName;

  final int? id;
  final String branchName;

  const Branches({
    required this.id,
    required this.branchName,
  });
}
