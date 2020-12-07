import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'authorization_status.g.dart';

class AuthorizationStatus extends EnumClass {
  static const AuthorizationStatus authorized = _$authorized;
  static const AuthorizationStatus denied = _$denied;
  static const AuthorizationStatus notDetermined = _$notDetermined;
  static const AuthorizationStatus provisional = _$provisional;

  const AuthorizationStatus._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap = BuiltMap<AuthorizationStatus, int>(
      {authorized: 0, denied: 1, notDetermined: 2, provisional: 3});

  static BuiltSet<AuthorizationStatus> get values => _$values;
  static AuthorizationStatus valueOf(String name) => _$valueOf(name);

  static Serializer<AuthorizationStatus> get serializer =>
      _$authorizationStatusSerializer;

  Object toJson() =>
      serializers.serializeWith(AuthorizationStatus.serializer, this);
}
