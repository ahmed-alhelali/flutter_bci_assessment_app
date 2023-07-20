import 'package:flutter/cupertino.dart';
import 'package:flutter_bci_assessment_app/features/features.dart';

import 'wrapper_page.dart';

class CreateUserPage extends StatelessWidget {
  const CreateUserPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperPage(
      title: "Create User Page",
      body: Center(
        child: Text(
          "As you Want",
        ),
      ),
    );
  }
}
