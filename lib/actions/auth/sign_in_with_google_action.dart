import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'sign_in_with_google_action.freezed.dart';
part 'sign_in_with_google_action.g.dart';

@freezed
class SignInWithGoogleAction with _$SignInWithGoogleAction, ReduxAction {
  factory SignInWithGoogleAction() = _SignInWithGoogleAction;

  factory SignInWithGoogleAction.fromJson(Map<String, dynamic> json) =>
      _$SignInWithGoogleActionFromJson(json);
}

// library sign_in_with_google;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'sign_in_with_google.g.dart';

// abstract class SignInWithGoogle extends Object
//     with ReduxAction
//     implements Built<SignInWithGoogle, SignInWithGoogleBuilder> {
//   SignInWithGoogle._();

//   factory SignInWithGoogle() = _$SignInWithGoogle._;

//   Object toJson() =>
//       serializers.serializeWith(SignInWithGoogle.serializer, this);

//   // static SignInWithGoogle fromJson(String jsonString) => serializers
//   //     .deserializeWith(SignInWithGoogle.serializer, json.decode(jsonString));

//   static Serializer<SignInWithGoogle> get serializer =>
//       _$signInWithGoogleSerializer;

//   @override
//   String toString() => 'SIGN_IN_WITH_GOOGLE';
// }
