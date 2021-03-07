import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_process/actions/sections/create_section_action.dart';
import 'package:the_process/actions/sections/update_sections_v_m_action.dart';
import 'package:the_process/middleware/sections/create_section.dart';

import '../../../data/models/auth_user_data_examples.dart';
import '../../../mocks/redux/fake_store.dart';
import '../../../mocks/services/http_service_mock.dart';

void main() {
  group('CreateSectionMiddleware', () {
    test('dispatches UpdateSectionsVM and calls DatabaseServce.createSection',
        () async {
      final fakeStore = FakeStore(
          updates: (b) => b
            ..authUserData.replace(AuthUserDataExamples.minimal)
            ..sections.newSection.name = 'testy');
      final httpServiceMock = HttpServiceMock();
      final nullDispatcher = (dynamic _) => null;

      // Create then invoke the middleware under test.
      final middleware = CreateSectionMiddleware(httpServiceMock);
      await middleware(fakeStore, CreateSectionAction(), nullDispatcher);

      verifyInOrder<dynamic>(<dynamic>[
        fakeStore.dispatch(UpdateSectionsVMAction(creatingNewSection: true)),
      ]);

      verify(httpServiceMock.createSection(name: 'testy'));
    });
  });
}
