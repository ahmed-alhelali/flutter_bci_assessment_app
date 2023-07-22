import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loading_widget_controller.dart';

class LoadingWidget {
  LoadingWidget._sharedInstance();

  static final LoadingWidget _shared = LoadingWidget._sharedInstance();

  factory LoadingWidget.instance() => _shared;

  LoadingWidgetController? controller;

  void show({
    required BuildContext context,
    String text = AppStrings.loading,
    Widget leading = const CircularProgressIndicator(
      color: AppColors.kFontColorWhite,
      strokeWidth: 2,
    ),
  }) {
    if (controller?.update(text, leading) ?? false) {
      return;
    } else {
      controller = showOverlay(
        context: context,
        text: text,
        leading: leading,
      );
    }
  }

  void hide() {
    controller?.dispose();
    controller = null;
  }

  LoadingWidgetController? showOverlay({
    required BuildContext context,
    required String text,
    required Widget leading,
  }) {
    final textController = StreamController<String>();
    textController.add(text);

    final widgetController = StreamController<Widget>();
    widgetController.add(leading);

    final state = Overlay.of(context);
    if (state == null) {
      return null;
    }

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(40),
          child: Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kSecondaryColorMain,
                  borderRadius: BorderRadius.circular(45.0),
                ),
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: StreamBuilder(
                        stream: widgetController.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return snapshot.data as Widget;
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                    const Gap(18),
                    StreamBuilder(
                      stream: textController.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data as String,
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    state.insert(overlay);

    return LoadingWidgetController(
      dispose: () {
        textController.close();
        overlay.remove();
        return true;
      },
      update: (text, widget) {
        textController.add(text);
        widgetController.add(widget);
        return true;
      },
    );
  }
}
