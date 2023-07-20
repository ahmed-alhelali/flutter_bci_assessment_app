import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:flutter_bci_assessment_app/features/src/create_user/widgets/drawar_widget.dart';
import '../../shared_widgets/shared_widgets.dart';

class TabletCreateUserPage extends StatelessWidget {
  const TabletCreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              child: const AppIcon(
                icon: AppIcons.kDrawerIcon,
              ),
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const DrawerWidget(),
      drawerEnableOpenDragGesture: true,
      extendBody: true,
      body: Container(
        color: Colors.white,
        child: const Center(
          child: AdaptiveText(
            data: "Tablet Layout",
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
