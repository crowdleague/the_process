import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';

part 'launch_url_action.freezed.dart';
part 'launch_url_action.g.dart';

@freezed
class LaunchURLAction with _$LaunchURLAction, ReduxAction {
  factory LaunchURLAction({required String url}) = _LaunchURLAction;

  factory LaunchURLAction.fromJson(Map<String, dynamic> json) =>
      _$LaunchURLActionFromJson(json);
}
