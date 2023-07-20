import 'package:flutter/material.dart';

import '../../shared_widgets/shared_widgets.dart';

class BrowserCreateUserPage extends StatelessWidget {
  const BrowserCreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: AdaptiveText(
            data: "Browser Layout",
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
