import 'package:redux/redux.dart';
import 'package:the_process/actions/sections/create_section.dart';
import 'package:the_process/actions/sections/update_sections_v_m.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/services/platform_service.dart';

class CreateSectionMiddleware extends TypedMiddleware<AppState, CreateSection> {
  CreateSectionMiddleware(PlatformService platformService)
      : super((store, action, next) async {
          next(action);

          store.dispatch(UpdateSectionsVM(creatingNewSection: true));

          await platformService.createSection(
            name: store.state.sections?.newSection.name ?? '-',
          );
        });
}
