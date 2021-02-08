import 'dart:convert';

import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/fake.dart';

import '../test-data/auth_test_data.dart' as auth_test_data;

/// The [SecretPayloadFake] passed in the constructor will be passed on to each
/// returned object so that calling
/// fakeSecretmanagerApi.projects.secrets.versions.access(name) will
/// return the [SecretPayloadFake].
class SecretmanagerApiFake extends Fake implements SecretmanagerApi {
  final SecretPayloadFake _fakeSecretPayload;

  SecretmanagerApiFake({String? payloadData})
      : _fakeSecretPayload = (payloadData == null)
            ? SecretPayloadFake(
                base64.encode(utf8.encode(auth_test_data.credentialsJson)))
            : SecretPayloadFake(base64.encode(utf8.encode(payloadData)));

  @override
  ProjectsResourceApi get projects =>
      ProjectsResourceApiFake(_fakeSecretPayload);
}

class ProjectsResourceApiFake extends Fake implements ProjectsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  ProjectsResourceApiFake(this._fakeSecretPayload);

  @override
  ProjectsSecretsResourceApi get secrets =>
      ProjectsSecretsResourceApiFake(_fakeSecretPayload);
}

class ProjectsSecretsResourceApiFake extends Fake
    implements ProjectsSecretsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  ProjectsSecretsResourceApiFake(this._fakeSecretPayload);
  @override
  ProjectsSecretsVersionsResourceApi get versions =>
      ProjectsSecretsVersionsResourceApiFake(_fakeSecretPayload);
}

class ProjectsSecretsVersionsResourceApiFake extends Fake
    implements ProjectsSecretsVersionsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  ProjectsSecretsVersionsResourceApiFake(this._fakeSecretPayload);
  @override
  Future<AccessSecretVersionResponse> access(String name, {String? $fields}) =>
      Future.value(AccessSecretVersionResponseFake('name', _fakeSecretPayload));
}

class AccessSecretVersionResponseFake extends Fake
    implements AccessSecretVersionResponse {
  AccessSecretVersionResponseFake(this.name, this.payload);

  @override
  String name;

  @override
  SecretPayload payload;
}

class SecretPayloadFake extends Fake implements SecretPayload {
  SecretPayloadFake(this.data);

  @override
  String data;

  @override
  List<int> get dataAsBytes => base64.decode(data);
}
