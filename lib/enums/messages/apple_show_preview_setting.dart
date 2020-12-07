import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'apple_show_preview_setting.g.dart';

class AppleShowPreviewSetting extends EnumClass {
  static const AppleShowPreviewSetting always = _$always;
  static const AppleShowPreviewSetting never = _$never;
  static const AppleShowPreviewSetting notSupported = _$notSupported;
  static const AppleShowPreviewSetting whenAuthenticated = _$whenAuthenticated;

  const AppleShowPreviewSetting._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap = BuiltMap<AppleShowPreviewSetting, int>(
      {always: 0, never: 1, notSupported: 2, whenAuthenticated: 3});

  static BuiltSet<AppleShowPreviewSetting> get values => _$values;
  static AppleShowPreviewSetting valueOf(String name) => _$valueOf(name);

  static Serializer<AppleShowPreviewSetting> get serializer =>
      _$appleShowPreviewSettingSerializer;

  Object toJson() =>
      serializers.serializeWith(AppleShowPreviewSetting.serializer, this);
}
