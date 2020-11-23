import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'authorization_step.g.dart';

class AuthorizationStep extends EnumClass {
  static const AuthorizationStep checking = _$checking;
  static const AuthorizationStep getting = _$getting;

  const AuthorizationStep._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap =
      BuiltMap<AuthorizationStep, int>({checking: 0, getting: 1});

  static BuiltSet<AuthorizationStep> get values => _$values;
  static AuthorizationStep valueOf(String name) => _$valueOf(name);

  static Serializer<AuthorizationStep> get serializer =>
      _$authorizationStepSerializer;

  Object toJson() =>
      serializers.serializeWith(AuthorizationStep.serializer, this);
}
