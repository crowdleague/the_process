import 'package:freezed_annotation/freezed_annotation.dart';

enum PlatformEnum {
  @JsonValue('ANDROID')
  android,
  @JsonValue('IOS')
  iOS,
  @JsonValue('MACOS')
  macOS,
  @JsonValue('FUCHSIA')
  fuchsia,
  @JsonValue('LINUX')
  linux,
  @JsonValue('WINDOWS')
  windows,
  @JsonValue('UNKNOWN')
  unknown,
}

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/serializers.dart';

// part 'platform_enum.g.dart';

// class PlatformEnum extends EnumClass {
//   static const PlatformEnum web = _$web;
//   static const PlatformEnum android = _$android;
//   static const PlatformEnum iOS = _$iOS;
//   static const PlatformEnum macOS = _$macOS;
//   static const PlatformEnum fuchsia = _$fuchsia;
//   static const PlatformEnum linux = _$linux;
//   static const PlatformEnum windows = _$windows;
//   static const PlatformEnum unknown = _$unknown;

//   const PlatformEnum._(String name) : super(name);

//   static final _$indexMap =
//       BuiltMap<PlatformEnum, int>({android: 0, iOS: 1, macOS: 2, web: 3});
//   int get index => _$indexMap[this]!;

//   static BuiltSet<PlatformEnum> get values => _$values;
//   static PlatformEnum valueOf(String name) => _$valueOf(name);

//   static Serializer<PlatformEnum> get serializer => _$platformEnumSerializer;

//   Object toJson() => serializers.serializeWith(PlatformEnum.serializer, this);
// }
