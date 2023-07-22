// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      currentPage: json['currentPage'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['firstPageUrl'] as String?,
      from: json['from'] as int?,
      lastPage: json['lastPage'] as int?,
      lastPageUrl: json['lastPageUrl'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['nextPageUrl'] as String?,
      path: json['path'] as String?,
      parPage: json['parPage'] as int?,
      prevPageUrl: json['prevPageUrl'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'lastPageUrl': instance.lastPageUrl,
      'links': instance.links,
      'nextPageUrl': instance.nextPageUrl,
      'path': instance.path,
      'parPage': instance.parPage,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };
