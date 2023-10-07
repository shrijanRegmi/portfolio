// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      themeColor:
          const ColorConverter().fromJson(json['theme_color'] as String?),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  val['images'] = instance.images;
  val['tags'] = instance.tags;
  writeNotNull(
      'theme_color', const ColorConverter().toJson(instance.themeColor));
  return val;
}
