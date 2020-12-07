import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'apple_notification_setting.g.dart';

class AppleNotificationSetting extends EnumClass {
  static const AppleNotificationSetting disabled = _$disabled;
  static const AppleNotificationSetting enabled = _$enabled;
  static const AppleNotificationSetting notSupported = _$notSupported;

  const AppleNotificationSetting._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap = BuiltMap<AppleNotificationSetting, int>(
      {disabled: 0, enabled: 1, notSupported: 2});

  static BuiltSet<AppleNotificationSetting> get values => _$values;
  static AppleNotificationSetting valueOf(String name) => _$valueOf(name);

  static Serializer<AppleNotificationSetting> get serializer =>
      _$appleNotificationSettingSerializer;

  Object toJson() =>
      serializers.serializeWith(AppleNotificationSetting.serializer, this);
}
