import 'package:redux/redux.dart';
import 'package:the_process/actions/navigation/push_page_action.dart';
import 'package:the_process/models/app_state/app_state.dart';

class PushPageReducer extends TypedReducer<AppState, PushPageAction> {
  PushPageReducer()
      : super((state, action) {
          // final immutableList = UnmodifiableListView(state.pagesData);
          // immutableList.add(action.data);
          state.pagesData.add(action.data);
          return state.copyWith(pagesData: state.pagesData);
        });
}
