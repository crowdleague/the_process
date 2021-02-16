import 'package:googleapis/secretmanager/v1.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'secretmanager_api_test_doubles.mocks.dart';

@GenerateMocks([
  SecretmanagerApi,
  ProjectsResourceApi,
  ProjectsSecretsResourceApi,
  ProjectsSecretsVersionsResourceApi,
  AccessSecretVersionResponse,
  SecretPayload
])
class SecretmanagerApiTestDoubles {
  SecretmanagerApiTestDoubles();
}

enum SecretmanagerFunctionNamed { access }

MockSecretmanagerApi createSecretmanagerApiMockThatReturns(
    {required SecretPayload payload,
    required SecretmanagerFunctionNamed onCalling}) {
  final mockSecretmanagerApi = MockSecretmanagerApi();
  final mockProjectsResourceApi = MockProjectsResourceApi();
  final mockProjectsDatabasesResourceApi = MockProjectsDatabasesResourceApi();
  final mockProjectsDatabasesDocumentsResourceApi =
      MockProjectsDatabasesDocumentsResourceApi();

  when(mockSecretmanagerApi.projects).thenReturn(mockProjectsResourceApi);
  when(mockProjectsResourceApi.databases)
      .thenReturn(mockProjectsDatabasesResourceApi);
  when(mockProjectsDatabasesResourceApi.documents)
      .thenReturn(mockProjectsDatabasesDocumentsResourceApi);
  when(mockProjectsDatabasesDocumentsResourceApi.get(any,
          mask_fieldPaths: anyNamed('mask_fieldPaths'),
          transaction: anyNamed('transaction'),
          readTime: anyNamed('readTime'),
          $fields: anyNamed('\$fields')))
      .thenAnswer((_) => Future.value(document));

  return mockSecretmanagerApi;
}
