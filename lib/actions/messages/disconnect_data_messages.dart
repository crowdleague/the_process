library disconnect_data_messages;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/serializers.dart';

part 'disconnect_data_messages.g.dart';

abstract class DisconnectDataMessages extends Object
    with ReduxAction
    implements Built<DisconnectDataMessages, DisconnectDataMessagesBuilder> {
  DisconnectDataMessages._();

  factory DisconnectDataMessages() = _$DisconnectDataMessages._;

  Object toJson() =>
      serializers.serializeWith(DisconnectDataMessages.serializer, this);

  static DisconnectDataMessages fromJson(String jsonString) =>
      serializers.deserializeWith(
          DisconnectDataMessages.serializer, json.decode(jsonString));

  static Serializer<DisconnectDataMessages> get serializer =>
      _$disconnectDataMessagesSerializer;

  @override
  String toString() => 'DISCONNECT_DATA_MESSAGES';
}
