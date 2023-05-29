// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:_json_serial_shared_test/shared_test.dart';
import 'package:example/example.dart';
import 'package:example/nullable_example.dart';
import 'package:test/test.dart';

void main() {
  test('Test Empty parameters', () {
    var field = NullableFields.fromJson({
      "date-of-birth":"2023-10-08",
      "firstName": "fn", "lastName": "sn"});
    expect(field.alist, []);
    expect(field.firstName, "fn");
    expect(field.stringWithDefault, "default Value");
    expect(field.properties, {});
    expect(field.middleName, 'something else');
    expect(field.lastName, 'sn');
  });

  // test('JsonSerializable', () {
  //   final person = Person('Inigo', 'Montoya', DateTime(1560, 5, 5))
  //     ..orders = [Order(DateTime.now())..item = (Item()..count = 42)];

  //   final personJson = loudEncode(person);

  //   final person2 =
  //       Person.fromJson(json.decode(personJson) as Map<String, dynamic>);

  //   expect(person.firstName, person2.firstName);
  //   expect(person.lastName, person2.lastName);
  //   expect(person.dateOfBirth, person2.dateOfBirth);
  //   expect(person.orders.single.date, person2.orders.single.date);
  //   expect(person.orders.single.item!.count, 42);

  //   expect(loudEncode(person2), equals(personJson));
  // });

  test('JsonLiteral', () {
    expect(glossaryData, hasLength(1));
  });
}
