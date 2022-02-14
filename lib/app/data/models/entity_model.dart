import '../../domain/entities/entity.dart';

class EntityModel extends Entity{
  EntityModel({
    String? value,}){
    _value = value;
  }

  EntityModel.fromJson(dynamic json) {
    _value = json['value'];
  }
  String? _value;

  @override
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = _value;
    return map;
  }

}