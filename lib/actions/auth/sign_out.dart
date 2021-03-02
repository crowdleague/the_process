import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_out.freezed.dart';
part 'sign_out.g.dart';

@freezed
class SignOut with _$SignOut {
  factory SignOut() = _SignOut;

  factory SignOut.fromJson(Map<String, dynamic> json) =>
      _$SignOutFromJson(json);
}

// library sign_out;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'sign_out.g.dart';

// abstract class SignOut extends Object
//     with ReduxAction
//     implements Built<SignOut, SignOutBuilder> {
//   SignOut._();

//   factory SignOut([void Function(SignOutBuilder) updates]) = _$SignOut;

//   Object toJson() => serializers.serializeWith(SignOut.serializer, this);

//   // static SignOut fromJson(String jsonString) =>
//   //     serializers.deserializeWith(SignOut.serializer, json.decode(jsonString));

//   static Serializer<SignOut> get serializer => _$signOutSerializer;

//   @override
//   String toString() => 'SIGN_OUT';
// }
