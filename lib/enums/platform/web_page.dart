import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'web_page.g.dart';

class WebPage extends EnumClass {
  static const WebPage google_doc = _$google_doc;
  static const WebPage google_drive_folder = _$google_drive_folder;

  const WebPage._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap =
      BuiltMap<WebPage, int>({google_doc: 0, google_drive_folder: 1});

  static BuiltSet<WebPage> get values => _$values;
  static WebPage valueOf(String name) => _$valueOf(name);

  static Serializer<WebPage> get serializer => _$webPageSerializer;

  Object toJson() => serializers.serializeWith(WebPage.serializer, this);
}
