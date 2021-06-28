import 'package:redux/redux.dart';
import 'package:the_process/state/app/app_state.dart';

class EmptyReducer extends TypedReducer<AppState, Object> {
  EmptyReducer() : super((state, action) => state);
}
