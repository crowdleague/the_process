import 'package:googleapis/drive/v3.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'drive_api_test_doubles.mocks.dart';

@GenerateMocks([DriveApi, FilesResourceApi])
class DriveApiDoubles {
  DriveApiDoubles();
}

MockDriveApi func(File file) {
  final mockDriveApi = MockDriveApi();
  final mockFilesResourceApi = MockFilesResourceApi();

  when(mockDriveApi.files).thenReturn(mockFilesResourceApi);
  when(mockFilesResourceApi.update(any, any))
      .thenAnswer((_) => Future.value(file));

  return mockDriveApi;
}
