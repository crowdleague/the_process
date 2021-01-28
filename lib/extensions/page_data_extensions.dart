import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:the_process/models/navigation/page_data/initial_page_data.dart';
import 'package:the_process/models/navigation/page_data/page_data.dart';
import 'package:the_process/models/navigation/page_data/problem_page_data.dart';
import 'package:the_process/models/navigation/page_data/profile_page_data.dart';
import 'package:the_process/widgets/app_widget/initial_page.dart';
import 'package:the_process/widgets/profile/profile_page.dart';
import 'package:the_process/widgets/shared/problem_page.dart';

/// We are using extensions in order to keep models as PODOs and avoid other
/// dependencies in the app state.
///
extension NavigatorEntriesExt on BuiltList<PageData> {
  List<MaterialPage> toPages() {
    final materialPages = <MaterialPage>[];

    for (final pageData in this) {
      MaterialPage materialPage;
      if (pageData is InitialPageData) {
        materialPage = MaterialPage<InitialPage>(
            key: ValueKey(InitialPage), child: InitialPage());
      } else if (pageData is ProfilePageData) {
        materialPage = MaterialPage<ProfilePage>(
            key: ValueKey(ProfilePage), child: ProfilePage());
      } else {
        // ProblemPageData
        materialPage = MaterialPage<ProblemPage>(
            key: ValueKey(ProblemPage),
            child: ProblemPage((pageData as ProblemPageData).problem));
      }
      materialPages.add(materialPage);
    }

    return materialPages;
  }
}
