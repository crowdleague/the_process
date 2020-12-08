library connect_data_messages;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'connect_data_messages.g.dart';

abstract class ConnectDataMessages extends Object
    with ReduxAction
    implements Built<ConnectDataMessages, ConnectDataMessagesBuilder> {
  ConnectDataMessages._();

  factory ConnectDataMessages() = _$ConnectDataMessages._;

  Object toJson() =>
      serializers.serializeWith(ConnectDataMessages.serializer, this);

  static ConnectDataMessages fromJson(String jsonString) => serializers
      .deserializeWith(ConnectDataMessages.serializer, json.decode(jsonString));

  static Serializer<ConnectDataMessages> get serializer =>
      _$connectDataMessagesSerializer;

  @override
  String toString() => 'CONNECT_DATA_MESSAGES';
}
