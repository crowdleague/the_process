import 'package:freezed_annotation/freezed_annotation.dart';

part 'asana_project_credentials.freezed.dart';
part 'asana_project_credentials.g.dart';

@freezed
abstract class AsanaProjectCredentials with _$AsanaProjectCredentials {
  factory AsanaProjectCredentials(
      {required String clientId,
      required String clientSecret,
      required String redirectURI}) = _AsanaProjectCredentials;

  factory AsanaProjectCredentials.fromJson(Map<String, dynamic> json) =>
      _$AsanaProjectCredentialsFromJson(json);
}
