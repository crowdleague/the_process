import 'package:authorization/src/auth_credentials/asana_user_credentials.dart';
import 'package:authorization/src/auth_credentials/google_user_credentials.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

/// Once per app, define a top level "Serializer" to gather together
/// all the generated serializers.
///
/// Collection of generated serializers for the AdventuresIn app
@SerializersFor([
  AsanaUserCredentials,
  GoogleUserCredentials,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
