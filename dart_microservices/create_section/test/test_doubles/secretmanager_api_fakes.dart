import 'dart:convert';

import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/fake.dart';

import '../test_data/auth_test_data.dart' as auth_test_data;

/// The [SecretPayloadFake] passed in the constructor will be passed on to each
/// returned object so that calling
/// fakeSecretmanagerApi.projects.secrets.versions.access(name) will
/// return the [SecretPayloadFake].
class SecretmanagerApiFake extends Fake implements SecretmanagerApi {
  final SecretPayloadFake _fakeSecretPayload;
  final Exception? _accessException;

  SecretmanagerApiFake({String? payloadData, Exception? accessException})
      : _fakeSecretPayload = (payloadData == null)
            ? SecretPayloadFake(
                base64.encode(utf8.encode(auth_test_data.credentialsJson)))
            : SecretPayloadFake(base64.encode(utf8.encode(payloadData))),
        _accessException = accessException;

  @override
  ProjectsResourceApi get projects =>
      ProjectsResourceApiFake(_fakeSecretPayload, _accessException);
}

class ProjectsResourceApiFake extends Fake implements ProjectsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  final Exception? _accessException;
  ProjectsResourceApiFake(this._fakeSecretPayload, this._accessException);

  @override
  ProjectsSecretsResourceApi get secrets =>
      ProjectsSecretsResourceApiFake(_fakeSecretPayload, _accessException);
}

class ProjectsSecretsResourceApiFake extends Fake
    implements ProjectsSecretsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  final Exception? _accessException;
  ProjectsSecretsResourceApiFake(
      this._fakeSecretPayload, this._accessException);
  @override
  ProjectsSecretsVersionsResourceApi get versions =>
      ProjectsSecretsVersionsResourceApiFake(
          _fakeSecretPayload, _accessException);
}

class ProjectsSecretsVersionsResourceApiFake extends Fake
    implements ProjectsSecretsVersionsResourceApi {
  final SecretPayloadFake _fakeSecretPayload;
  final Exception? _accessException;
  ProjectsSecretsVersionsResourceApiFake(
      this._fakeSecretPayload, this._accessException);
  @override
  Future<AccessSecretVersionResponse> access(String name, {String? $fields}) {
    if (_accessException != null) {
      throw _accessException!;
    }
    return Future.value(
        AccessSecretVersionResponseFake('name', _fakeSecretPayload));
  }
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
