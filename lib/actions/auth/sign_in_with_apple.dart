import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_with_apple.freezed.dart';
part 'sign_in_with_apple.g.dart';

@freezed
class SignInWithApple with _$SignInWithApple {
  factory SignInWithApple() = _SignInWithApple;

  factory SignInWithApple.fromJson(Map<String, dynamic> json) =>
      _$SignInWithAppleFromJson(json);
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
