import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'sign_out_action.freezed.dart';
part 'sign_out_action.g.dart';

@freezed
class SignOutAction with _$SignOutAction, ReduxAction {
  factory SignOutAction() = _SignOutAction;

  factory SignOutAction.fromJson(Map<String, dynamic> json) =>
      _$SignOutActionFromJson(json);
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
