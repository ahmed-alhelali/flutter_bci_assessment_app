// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: json['from'] as int?,
      last_page: json['last_page'] as int?,
      last_page_url: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      next_page_url: json['next_page_url'] as String?,
      path: json['path'] as String?,
      par_page: json['par_page'] as int?,
      prev_page_url: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'links': instance.links,
      'next_page_url': instance.next_page_url,
      'path': instance.path,
      'par_page': instance.par_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };
