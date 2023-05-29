// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nullable_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NullableFields _$NullableFieldsFromJson(Map<String, dynamic> json) =>
    NullableFields(
      json['properties'] as Map<String, dynamic>? ?? {},
      (json['alist'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      json['firstName'] as String,
      json['lastName'] as String,
      json['stringWithDefault'] as String? ?? 'default Value',
      (json['doubleNonNullable'] as num?)?.toDouble() ?? 5.24,
      DateTime.parse(json['date-of-birth'] as String),
      middleName: json['middleName'] as String? ?? 'something else',
      doubleNullable: (json['doubleNullable'] as num?)?.toDouble() ?? 67.42,
      lastOrder: json['last-order'] == null
          ? null
          : DateTime.parse(json['last-order'] as String),
    );

Map<String, dynamic> _$NullableFieldsToJson(NullableFields instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
    'alist': instance.alist,
    'properties': instance.properties,
    'stringWithDefault': instance.stringWithDefault,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middleName', instance.middleName);
  val['lastName'] = instance.lastName;
  writeNotNull('doubleNullable', instance.doubleNullable);
  val['doubleNonNullable'] = instance.doubleNonNullable;
  val['date-of-birth'] = instance.dateOfBirth.toIso8601String();
  val['last-order'] = instance.lastOrder?.toIso8601String();
  return val;
}
