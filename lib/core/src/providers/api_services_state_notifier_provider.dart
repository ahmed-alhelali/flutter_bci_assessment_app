import 'package:flutter_bci_assessment_app/core/src/notifiers/api_service_state_notifier.dart';
import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceStateNotifierProvider =
    StateNotifierProvider<ApiServiceStateNotifier, IsLoading>(
        (ref) => ApiServiceStateNotifier());
