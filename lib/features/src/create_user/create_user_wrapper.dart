import 'package:flutter/material.dart';
import 'pages/browser_create_user_page.dart';
import 'pages/desktop_create_user_page.dart';
import 'pages/mobile_create_user_page.dart';
import 'pages/tablet_create_user_page.dart';

class CreateUserWrapper extends StatefulWidget {
  const CreateUserWrapper({super.key});

  @override
  State<CreateUserWrapper> createState() => _CreateUserWrapperState();
}

class _CreateUserWrapperState extends State<CreateUserWrapper> {
  @override
  Widget build(BuildContext context) {
    final targetPlatform = Theme.of(context).platform;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600 ||
              targetPlatform == TargetPlatform.android ||
              targetPlatform == TargetPlatform.iOS) {
            return const MobileCreateUserPage();
          } else if (constraints.maxWidth > 600 &&
              constraints.maxWidth <= 800) {
            return const TabletCreateUserPage();
          } else if (constraints.maxWidth > 800 &&
              constraints.maxWidth <= 1200) {
            return const DesktopCreateUserPage();
          } else {
            return const BrowserCreateUserPage();
          }
        },
      ),
    );
  }
}
