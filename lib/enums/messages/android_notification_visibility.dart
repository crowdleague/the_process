import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'android_notification_visibility.g.dart';

class AndroidNotificationVisibility extends EnumClass {
  static const AndroidNotificationVisibility secret = _$secret;
  static const AndroidNotificationVisibility private = _$private;
  static const AndroidNotificationVisibility public = _$public;

  const AndroidNotificationVisibility._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap = BuiltMap<AndroidNotificationVisibility, int>(
      {secret: 0, private: 1, public: 2});

  static BuiltSet<AndroidNotificationVisibility> get values => _$values;
  static AndroidNotificationVisibility valueOf(String name) => _$valueOf(name);

  static Serializer<AndroidNotificationVisibility> get serializer =>
      _$androidNotificationVisibilitySerializer;

  Object toJson() =>
      serializers.serializeWith(AndroidNotificationVisibility.serializer, this);
}
