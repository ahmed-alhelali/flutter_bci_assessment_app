import 'package:flutter/cupertino.dart';

import 'wrapper_page.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperPage(
      title: "Users List Page",
      body: Center(
        child: Text(
          "*As you Want*",
        ),
      ),
    );
  }
}
