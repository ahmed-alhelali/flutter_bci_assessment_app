import 'package:flutter/material.dart';

import 'wrapper_page.dart';

class UsersListPage extends StatelessWidget {
  const UsersListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperPage(
      body: Center(
        child: Text(
          "*As you Want*",
        ),
      ),
    );
  }
}
