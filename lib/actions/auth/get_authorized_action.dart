import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/enums/auth/provider_name.dart';

part 'get_authorized_action.freezed.dart';
part 'get_authorized_action.g.dart';

@freezed
class GetAuthorizedAction with _$GetAuthorizedAction, ReduxAction {
  factory GetAuthorizedAction({required ProviderName provider}) =
      _GetAuthorizedAction;

  factory GetAuthorizedAction.fromJson(Map<String, dynamic> json) =>
      _$GetAuthorizedActionFromJson(json);
}

// library get_authorized;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/enums/auth/provider_name.dart';
// import 'package:the_process/serializers.dart';

// part 'get_authorized.g.dart';

// abstract class GetAuthorized extends Object
//     with ReduxAction
//     implements Built<GetAuthorized, GetAuthorizedBuilder> {
//   ProviderName get provider;

//   GetAuthorized._();

//   factory GetAuthorized({required ProviderName provider}) = _$GetAuthorized._;

//   factory GetAuthorized.by([void Function(GetAuthorizedBuilder) updates]) =
//       _$GetAuthorized;

//   Object toJson() => serializers.serializeWith(GetAuthorized.serializer, this);

//   // static GetAuthorized fromJson(String jsonString) => serializers
//   //     .deserializeWith(GetAuthorized.serializer, json.decode(jsonString));

//   static Serializer<GetAuthorized> get serializer => _$getAuthorizedSerializer;

//   @override
//   String toString() => 'GET_AUTHORIZED';
// }
