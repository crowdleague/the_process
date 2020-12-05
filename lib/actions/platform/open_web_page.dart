library open_web_page;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/enums/platform/web_page.dart';
import 'package:the_process/serializers.dart';

part 'open_web_page.g.dart';

abstract class OpenWebPage extends Object
    with ReduxAction
    implements Built<OpenWebPage, OpenWebPageBuilder> {
  WebPage get type;
  String get id;

  OpenWebPage._();

  factory OpenWebPage({@required WebPage type, @required String id}) =
      _$OpenWebPage._;

  factory OpenWebPage.by([void Function(OpenWebPageBuilder) updates]) =
      _$OpenWebPage;

  Object toJson() => serializers.serializeWith(OpenWebPage.serializer, this);

  static OpenWebPage fromJson(String jsonString) => serializers.deserializeWith(
      OpenWebPage.serializer, json.decode(jsonString));

  static Serializer<OpenWebPage> get serializer => _$openWebPageSerializer;

  @override
  String toString() => 'OPEN_WEB_PAGE';
}
