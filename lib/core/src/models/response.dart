import 'package:flutter_bci_assessment_app/core/src/typedefs/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'link.dart';
import 'user.dart';

part 'response.freezed.dart';

part 'response.g.dart';

@freezed
class Response with _$Response {
  const factory Response({
    required CurrentPage? current_page,
    required List<User>? data,
    required String? first_page_url,
    required int? from,
    required int? last_page,
    required String? last_page_url,
    required List<Link>? links,
    required String? next_page_url,
    required String? path,
    required int? par_page,
    required String? prev_page_url,
    required int? to,
    required int? total,
  }) = _Response;

  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}
