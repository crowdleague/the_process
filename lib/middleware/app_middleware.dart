import 'package:redux/redux.dart';
import 'package:the_process/middleware/project_sections/create_project_section_middleware.dart';
import 'package:the_process/services/http_service.dart';

import '../main.dart';

/// Middleware is used for a variety of things:
/// - Logging
/// - Async calls (database, network)
/// - Calling to system frameworks
///
/// These are performed when actions are dispatched to the Store
///
/// The output of an action can perform another action using the [NextDispatcher]
///
List<Middleware<AppState>> createAppMiddleware({
  required HttpService httpService,
}) {
  return [
    // Sections
    CreateProjectSectionMiddleware(httpService),
  ];
}
