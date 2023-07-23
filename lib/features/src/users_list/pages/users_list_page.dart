import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/features/src/wrappers/pages/wrapper_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersListPage extends ConsumerStatefulWidget {
  const UsersListPage({super.key});

  @override
  ConsumerState<UsersListPage> createState() => _StateUsersListPage();
}

class _StateUsersListPage extends ConsumerState<UsersListPage> {
  Response? response;
  UsersDataTableSource? myData;
  int rowPerPage = 0;

  Future<void> fetchUsersList() async {
    final apiResponse = await ref
        .read(apiServiceStateNotifierProvider.notifier)
        .fetchUsers(ref: ref);

    //the mounted check is to makes sure we didn't call setState()
    // if the widget disposed during the UI changes
    setState(() {
      response = apiResponse;
      myData = UsersDataTableSource(
          usersData: apiResponse!.data ?? [], ref: ref, response: apiResponse);

      rowPerPage = myData!.rowCount;
    });
  }

  @override
  void initState() {
    super.initState();
    if (context.mounted) {
      fetchUsersList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WrapperPage(
      body: SizedBox(
        width: 1200,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppGaps.kGap4,
              SizedBox(
                height: 40,
                child: ElevatedButton(
                    onPressed: () async {
                      ref.read(selectedPageNameProvider.notifier).update(
                            (state) => AppRouteNames.createUser,
                          );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const AppIcon(
                          icon: AppIcons.kPlusIcon,
                        ),
                        AppGaps.kGap8,
                        Text(
                          AppStrings.addUser,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    )),
              ),
              AppGaps.kGap12,
              if (myData != null)
                PaginatedDataTable(
                  source: myData!,
                  columns: tableColumnsItems
                      .map((columnItem) => columnItem)
                      .toList(),
                  horizontalMargin: 60,
                  rowsPerPage: rowPerPage,
                  onRowsPerPageChanged: (value) {},
                  availableRowsPerPage: [
                    myData!.rowCount,
                  ],
                  showFirstLastButtons: true,
                ),
              AppGaps.kGap12,
            ],
          ),
        ),
      ),
    );
  }
}
