import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:redfire/extensions.dart';
import 'package:redfire/services.dart';
import 'package:redfire/types.dart';
import 'package:redux/redux.dart';
import 'package:the_process/actions/project_sections/store_project_sections_action.dart';
import 'package:the_process/actions/project_sections/tap_project_sections_action.dart';
import 'package:the_process/main.dart';
import 'package:the_process/models/project_sections/project_section.dart';

class TapProjectSectionsMiddleware
    extends TypedMiddleware<AppState, TapProjectSectionsAction> {
  TapProjectSectionsMiddleware()
      : super((store, action, next) async {
          next(action);

          try {
            _subscription?.cancel();
            if (action.turnOff) {
              return;
            }

            final databaseService = Locator.getDatabaseService();

            // Convert json from the database to an action that handles the data,
            // storing in the app state.
            _subscription = databaseService
                .tapCollectionAt(path: 'sections')
                .listen((event) {
              store.dispatch(StoreProjectSectionsAction(
                  list:
                      event.map((e) => ProjectSection.fromJson(e)).toIList()));
            }, onError: store.dispatchProblem);
          } catch (error, trace) {
            store.dispatchProblem(error, trace);
          }
        });

  static StreamSubscription<List<JsonMap>>? _subscription;
}
