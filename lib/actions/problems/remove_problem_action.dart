import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/models/problems/problem.dart';

part 'remove_problem_action.freezed.dart';
part 'remove_problem_action.g.dart';

@freezed
class RemoveProblemAction with _$RemoveProblemAction, ReduxAction {
  factory RemoveProblemAction({required Problem problem}) =
      _RemoveProblemAction;

  factory RemoveProblemAction.fromJson(Map<String, dynamic> json) =>
      _$RemoveProblemActionFromJson(json);
}

// library remove_problem;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/models/problems/problem.dart';
// import 'package:the_process/serializers.dart';

// part 'remove_problem.g.dart';

// abstract class RemoveProblem extends Object
//     with ReduxAction
//     implements Built<RemoveProblem, RemoveProblemBuilder> {
//   Problem get problem;

//   RemoveProblem._();

//   factory RemoveProblem({required Problem problem}) = _$RemoveProblem._;

//   factory RemoveProblem.by([void Function(RemoveProblemBuilder) updates]) =
//       _$RemoveProblem;

//   Object toJson() => serializers.serializeWith(RemoveProblem.serializer, this);

//   // static RemoveProblem fromJson(String jsonString) => serializers
//   //     .deserializeWith(RemoveProblem.serializer, json.decode(jsonString));

//   static Serializer<RemoveProblem> get serializer => _$removeProblemSerializer;

//   @override
//   String toString() => 'REMOVE_PROBLEM';
// }
