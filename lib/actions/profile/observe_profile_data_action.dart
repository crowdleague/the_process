import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'observe_profile_data_action.freezed.dart';
part 'observe_profile_data_action.g.dart';

@freezed
class ObserveProfileDataAction with _$ObserveProfileDataAction, ReduxAction {
  factory ObserveProfileDataAction() = _ObserveProfileDataAction;

  factory ObserveProfileDataAction.fromJson(Map<String, dynamic> json) =>
      _$ObserveProfileDataActionFromJson(json);
}

// library observe_profile_data;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'observe_profile_data.g.dart';

// abstract class ObserveProfileData extends Object
//     with ReduxAction
//     implements Built<ObserveProfileData, ObserveProfileDataBuilder> {
//   ObserveProfileData._();

//   factory ObserveProfileData() = _$ObserveProfileData._;

//   Object toJson() =>
//       serializers.serializeWith(ObserveProfileData.serializer, this);

//   // static ObserveProfileData fromJson(String jsonString) => serializers
//   //     .deserializeWith(ObserveProfileData.serializer, json.decode(jsonString));

//   static Serializer<ObserveProfileData> get serializer =>
//       _$observeProfileDataSerializer;

//   @override
//   String toString() => 'OBSERVE_PROFILE_DATA';
// }
