import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'detect_platform_action.freezed.dart';
part 'detect_platform_action.g.dart';

@freezed
class DetectPlatformAction with _$DetectPlatformAction, ReduxAction {
  factory DetectPlatformAction() = _DetectPlatformAction;

  factory DetectPlatformAction.fromJson(Map<String, dynamic> json) =>
      _$DetectPlatformActionFromJson(json);
}

// library detect_platform;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'detect_platform.g.dart';

// abstract class DetectPlatform extends Object
//     with ReduxAction
//     implements Built<DetectPlatform, DetectPlatformBuilder> {
//   DetectPlatform._();

//   factory DetectPlatform() = _$DetectPlatform._;

//   Object toJson() => serializers.serializeWith(DetectPlatform.serializer, this);

//   // static DetectPlatform fromJson(String jsonString) => serializers
//   //     .deserializeWith(DetectPlatform.serializer, json.decode(jsonString));

//   static Serializer<DetectPlatform> get serializer =>
//       _$detectPlatformSerializer;

//   @override
//   String toString() => 'DETECT_PLATFORM';
// }
