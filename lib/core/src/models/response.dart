import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'link.dart';
import 'user.dart';

part 'response.freezed.dart';

part 'response.g.dart';

@freezed
class Response with _$Response {
  const factory Response({
    required CurrentPage? currentPage,
    required List<User>? data,
    required String? firstPageUrl,
    required int? from,
    required int? lastPage,
    required String? lastPageUrl,
    required List<Link>? links,
    required String? nextPageUrl,
    required String? path,
    required int? parPage,
    required String? prevPageUrl,
    required int? to,
    required int? total,
  }) = _Response;

  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}
