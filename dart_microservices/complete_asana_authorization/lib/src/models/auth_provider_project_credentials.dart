import 'package:complete_asana_authorization/src/models/asana_project_credentials.dart';
import 'package:complete_asana_authorization/src/models/google_project_credentials.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_provider_project_credentials.freezed.dart';
part 'auth_provider_project_credentials.g.dart';

@freezed
abstract class AuthProviderProjectCredentials
    with _$AuthProviderProjectCredentials {
  factory AuthProviderProjectCredentials(
          {required GoogleProjectCredentials google,
          required AsanaProjectCredentials asana}) =
      _AuthProviderProjectCredentials;

  factory AuthProviderProjectCredentials.fromJson(Map<String, dynamic> json) =>
      _$AuthProviderProjectCredentialsFromJson(json);
}
