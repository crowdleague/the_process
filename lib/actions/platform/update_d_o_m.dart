library update_d_o_m;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'update_d_o_m.g.dart';

abstract class UpdateDOM extends Object
    with ReduxAction
    implements Built<UpdateDOM, UpdateDOMBuilder> {
  UpdateDOM._();

  factory UpdateDOM() = _$UpdateDOM._;

  Object toJson() => serializers.serializeWith(UpdateDOM.serializer, this);

  static UpdateDOM fromJson(String jsonString) => serializers.deserializeWith(
      UpdateDOM.serializer, json.decode(jsonString));

  static Serializer<UpdateDOM> get serializer => _$updateDOMSerializer;

  @override
  String toString() => 'UPDATE_D_O_M';
}
