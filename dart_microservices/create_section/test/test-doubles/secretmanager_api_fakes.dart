import 'dart:convert';

import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/fake.dart';

import '../test-data/auth_test_data.dart' as auth_test_data;

// .projects.secrets.versions.access
class SecretmanagerApiFake extends Fake implements SecretmanagerApi {
  @override
  ProjectsResourceApi get projects => ProjectsResourceApiFake();
}

class ProjectsResourceApiFake extends Fake implements ProjectsResourceApi {
  @override
  ProjectsSecretsResourceApi get secrets => ProjectsSecretsResourceApiFake();
}

class ProjectsSecretsResourceApiFake extends Fake
    implements ProjectsSecretsResourceApi {
  @override
  ProjectsSecretsVersionsResourceApi get versions =>
      ProjectsSecretsVersionsResourceApiFake();
}

class ProjectsSecretsVersionsResourceApiFake extends Fake
    implements ProjectsSecretsVersionsResourceApi {
  @override
  Future<AccessSecretVersionResponse> access(String name, {String? $fields}) =>
      Future.value(
        AccessSecretVersionResponseFake(
          'name',
          SecretPayloadFake(
            base64.encode(
              utf8.encode(auth_test_data.credentialsJson),
            ),
          ),
        ),
      );
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
