import 'package:googleapis/secretmanager/v1.dart';
import 'package:test/fake.dart';

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
      Future.value(AccessSecretVersionResponse());
}

class AccessSecretVersionResponseFake extends Fake
    implements AccessSecretVersionResponse {
  AccessSecretVersionResponseFake(this.name, this.payload);

  @override
  String name;

  @override
  SecretPayload payload;
}
