import 'dart:convert';

import '../../domain/entities/entity_name.dart';

class EntityModel extends Entity {
  @override
  final String value;

  const EntityModel({required this.value}) : super(value: value);

  factory EntityModel.fromJson(String str) =>
      EntityModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EntityModel.fromMap(Map<String, dynamic> json) =>
      EntityModel(value: json["value"]);

  Map<String, dynamic> toMap() => {"value": value};
}
