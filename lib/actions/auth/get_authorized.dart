library get_authorized;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'get_authorized.g.dart';

abstract class GetAuthorized extends Object
    with ReduxAction
    implements Built<GetAuthorized, GetAuthorizedBuilder> {
  GetAuthorized._();

  factory GetAuthorized() = _$GetAuthorized._;

  Object toJson() => serializers.serializeWith(GetAuthorized.serializer, this);

  static GetAuthorized fromJson(String jsonString) => serializers
      .deserializeWith(GetAuthorized.serializer, json.decode(jsonString));

  static Serializer<GetAuthorized> get serializer => _$getAuthorizedSerializer;

  @override
  String toString() => 'GET_AUTHORIZED';
}