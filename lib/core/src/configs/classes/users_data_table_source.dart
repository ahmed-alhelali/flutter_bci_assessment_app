import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/items/table_row_cells_items.dart';
import 'package:flutter_bci_assessment_app/core/src/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersDataTableSource extends DataTableSource {
  final List<User> usersData;
  WidgetRef ref;

  UsersDataTableSource({required this.usersData, required this.ref});

  @override
  DataRow? getRow(int index) {
    return DataRow(
      color: index % 2 == 0
          ? MaterialStateProperty.all(const Color(0xffFFFFFF))
          : MaterialStateProperty.all(const Color(0xffFAFAFA)),
      cells: tableRowCellsItems(usersData.elementAt(index))
          .map((dataCell) => dataCell)
          .toList(),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => usersData.length;

  @override
  int get selectedRowCount => 0;
}
