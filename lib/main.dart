import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redfire/types.dart';
import 'package:redfire/widgets.dart';
import 'package:the_process/reducers/sections/store_project_sections.dart';
import 'package:the_process/reducers/sections/update_new_project_section_v_m.dart';
import 'package:the_process/reducers/sections/update_project_sections_v_m.dart';

import 'models/project_sections/project_sections_v_m.dart';
import 'models/team/team_member.dart';
import 'widgets/home/home_page.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class AppState with _$AppState, RedFireState {
  factory AppState({
    required IList<PageData> pages,
    required IList<ProblemInfo> problems,
    required Settings settings,
    required AuthState auth,

    /// Profile
    ProfileData? profile,

    /// Sections
    required ProjectSectionsVM sections,

    /// Teams
    TeamMember? teamMember,
  }) = _AppState;

  factory AppState.init() => AppState(
        auth: AuthState.init(),
        pages: <PageData>[const InitialPageData()].lock,
        problems: IList(),
        sections: ProjectSectionsVM.init(),
        settings: Settings.init(),
      );

  factory AppState.fromJson(Map<String, Object?> json) =>
      _$AppStateFromJson(json);
}

void main() => runApp(AppWidget<AppState>(
      initialState: AppState.init(),
      initialActions: const [],
      middlewares: const [],
      reducers: [
        // Sections
        StoreProjectSectionsReducer(),
        UpdateNewProjectSectionVMReducer(),
        UpdateProjectSectionsVMReducer(),
      ],
      mainPage: const HomePage(),
    ));
