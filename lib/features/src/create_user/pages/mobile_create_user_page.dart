import 'package:flutter/material.dart';

import '../../shared_widgets/shared_widgets.dart';

class MobileCreateUserPage extends StatelessWidget {
  const MobileCreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: AdaptiveText(
            data: "Mobile Layout",
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
