import 'package:flutter/material.dart';

import '../../shared_widgets/shared_widgets.dart';

class DesktopCreateUserPage extends StatelessWidget {
  const DesktopCreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: AdaptiveText(
            data: "Desktop Layout",
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
