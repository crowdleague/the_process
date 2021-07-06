import 'package:redfire/extensions.dart';
import 'package:redux/redux.dart';
import 'package:the_process/actions/project_sections/create_project_section_action.dart';
import 'package:the_process/actions/project_sections/update_project_sections_v_m_action.dart';

import '../../main.dart';
import '../../services/http_service.dart';

class CreateProjectSectionMiddleware
    extends TypedMiddleware<AppState, CreateProjectSectionAction> {
  CreateProjectSectionMiddleware(HttpService httpService)
      : super((store, action, next) async {
          next(action);

          try {
            store.dispatch(
                UpdateProjectSectionsVMAction(creatingNewSection: true));

            await httpService.createSection(name: store.state.sections.newName);
          } catch (error, trace) {
            store.dispatchProblem(error, trace);
          }
        });
}
