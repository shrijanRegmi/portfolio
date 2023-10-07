import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shrijan/features/shared/extensions/color_extension.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    final String? title,
    final String? description,
    @Default(<String>[]) final List<String> images,
    @Default(<String>[]) final List<String> tags,
    @ColorConverter() final Color? themeColor,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

class ColorConverter implements JsonConverter<Color?, String?> {
  const ColorConverter();

  @override
  Color? fromJson(String? hexString) {
    if (hexString == null) {
      return null;
    }
    return ColorExt.fromHex(hexString);
  }

  @override
  String? toJson(Color? object) {
    if (object == null) {
      return null;
    }
    return object.toHex();
  }
}
