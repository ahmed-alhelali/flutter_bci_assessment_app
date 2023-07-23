import 'package:flutter_bci_assessment_app/core/src/providers/api_services_state_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLoadingProvider = Provider<bool>((ref) {
  final loadingValue = ref.watch(apiServiceStateNotifierProvider);

  return loadingValue;
});