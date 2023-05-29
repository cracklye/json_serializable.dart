// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'nullable_example.g.dart';

@JsonSerializable()
class NullableFields {
  ///This is required and should be created.
  final String firstName;

  @JsonKey(
      includeIfNull: false, deserializeDefaultIfNull: true, defaultValue: [])
  final List<String> alist;

  @JsonKey(
      includeIfNull: false, deserializeDefaultIfNull: true, defaultValue: {})
  final Map<String, dynamic> properties;

  @JsonKey(
      includeIfNull: false,
      deserializeDefaultIfNull: true,
      defaultValue: "default Value")
  final String stringWithDefault;

  @JsonKey(
      includeIfNull: false,
      deserializeDefaultIfNull: true,
      defaultValue: "something else")
  final String? middleName;

  @JsonKey(
    includeIfNull: false,
    deserializeDefaultIfNull: true,
  )
  final String lastName;
  @JsonKey(
      includeIfNull: false, deserializeDefaultIfNull: true, defaultValue: 67.42)
  final double? doubleNullable;
  @JsonKey(
      includeIfNull: false, deserializeDefaultIfNull: true, defaultValue: 5.24)
  final double doubleNonNullable;

  @JsonKey(
    name: 'date-of-birth',
    deserializeDefaultIfNull: true,

    ///defaultValue: "2023-05-24"
  )
  final DateTime dateOfBirth;

  @JsonKey(name: 'last-order')
  final DateTime? lastOrder;

  NullableFields(
    this.properties,
    this.alist,
    this.firstName,
    this.lastName,
    this.stringWithDefault,
    this.doubleNonNullable,
    this.dateOfBirth, {
    this.middleName,
    this.doubleNullable,
    this.lastOrder,
  });

  factory NullableFields.fromJson(Map<String, dynamic> json) =>
      _$NullableFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$NullableFieldsToJson(this);
}
