import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/core/src/configs/items/table_columns_items.dart';
import 'package:flutter_bci_assessment_app/core/src/models/response.dart';
import 'package:flutter_bci_assessment_app/core/src/providers/api_services_state_notifier_provider.dart';
import 'package:flutter_bci_assessment_app/core/src/providers/current_page_name_provider.dart';
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

  Future<void> fetchUsersList() async {
    final apiResponse =
        await ref.read(apiServiceStateNotifierProvider.notifier).fetchUsers(ref: ref);

    //the mounted check is to makes sure we didn't call setState()
    // if the widget disposed during the UI changes
    setState(() {
      response = apiResponse;
      myData = UsersDataTableSource(
          usersData: apiResponse!.data ?? [], ref: ref, response: apiResponse);
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
        width: 825,
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
                  rowsPerPage: 10,
                  availableRowsPerPage: const [10],
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
