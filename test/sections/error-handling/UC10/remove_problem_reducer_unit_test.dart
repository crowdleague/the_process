import 'package:flutter_test/flutter_test.dart';
import 'package:the_process/actions/problems/remove_problem_action.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/models/navigation/page_data/page_data.dart';
import 'package:the_process/models/problems/problem.dart';
import 'package:the_process/reducers/problems/remove_problem.dart';

void main() {
  group('RemoveProblemReducer', () {
    final problem =
        Problem(errorString: 'Problem error message', traceString: null);
    final problemPageData = ProblemPageData(problem);
    test(
        'removes Problem from state.problems and ProblemPageData from state.pagesData',
        () {
      final state = AppState.init();
      state.copyWith(
          pagesData: state.pagesData.copyAndAdd(problemPageData),
          problems: state.problems.copyAndAdd(problem));

      expect(state.problems.length, 1);
      expect(state.pagesData.length, 2);

      // Invoke the reducer to rebuild AppState.
      final AppState newState = RemoveProblemReducer()
          .reducer(state, RemoveProblemAction(problem: problem));

      expect(newState.problems.length, 0);
      expect(newState.pagesData.length, 1);
    });
  });
}
