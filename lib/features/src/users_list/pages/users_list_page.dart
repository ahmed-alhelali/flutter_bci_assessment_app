import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/core/src/providers/current_page_name_provider.dart';
import 'package:flutter_bci_assessment_app/features/src/wrappers/pages/wrapper_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersListPage extends ConsumerWidget {
  const UsersListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WrapperPage(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppGaps.kGap16,
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () {
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
                    Text(
                      AppStrings.addUser,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                )),
          ),
          AppGaps.kGap12,
          AppGaps.kGap12,
        ],
      ),
    );
  }
}
