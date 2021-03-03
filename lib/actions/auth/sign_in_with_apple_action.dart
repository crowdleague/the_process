import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'sign_in_with_apple_action.freezed.dart';
part 'sign_in_with_apple_action.g.dart';

@freezed
class SignInWithAppleAction with _$SignInWithAppleAction, ReduxAction {
  factory SignInWithAppleAction() = _SignInWithAppleAction;

  factory SignInWithAppleAction.fromJson(Map<String, dynamic> json) =>
      _$SignInWithAppleActionFromJson(json);
}
// library sign_in_with_apple;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'sign_in_with_apple.g.dart';

// abstract class SignInWithApple extends Object
//     with ReduxAction
//     implements Built<SignInWithApple, SignInWithAppleBuilder> {
//   SignInWithApple._();

//   factory SignInWithApple() = _$SignInWithApple._;

//   Object toJson() =>
//       serializers.serializeWith(SignInWithApple.serializer, this);

//   // static SignInWithApple fromJson(String jsonString) => serializers
//   //     .deserializeWith(SignInWithApple.serializer, json.decode(jsonString));

//   static Serializer<SignInWithApple> get serializer =>
//       _$signInWithAppleSerializer;

//   @override
//   String toString() => 'SIGN_IN_WITH_APPLE';
// }
