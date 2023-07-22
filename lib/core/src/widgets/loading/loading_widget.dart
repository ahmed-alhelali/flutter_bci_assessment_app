import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bci_assessment_app/core/core.dart';

import 'loading_widget_controller.dart';

class LoadingWidget {
  LoadingWidget._sharedInstance();

  static final LoadingWidget _shared = LoadingWidget._sharedInstance();

  factory LoadingWidget.instance() => _shared;

  LoadingWidgetController? controller;

  void show({
    required BuildContext context,
    String text = AppStrings.loading,
  }) {
    if (controller?.update(text) ?? false) {
      return;
    } else {
      controller = showOverlay(
        context: context,
        text: text,
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
  }) {
    final textController = StreamController<String>();
    textController.add(text);

    final state = Overlay.of(context);
    if (state == null) {
      return null;
    }
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    final overlay = OverlayEntry(
      builder: (context) {
        return Material(
          color: Colors.black.withAlpha(150),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 230,
                maxHeight: 160,
                minHeight: 160,
                minWidth: 230,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: AppColors.kFontColorGrey.withOpacity(0.5),
                    ),
                    const SizedBox(height: 30),
                    StreamBuilder(
                      stream: textController.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            snapshot.data as String,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge,
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
      update: (text) {
        textController.add(text);
        return true;
      },
    );
  }
}
