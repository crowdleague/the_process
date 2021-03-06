import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_process/actions/shared/connect_database_action.dart';
import 'package:the_process/enums/database/database_section_enum.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/models/sections/sections_v_m.dart';
import 'package:the_process/widgets/home/project-overview/sections-view/new_section_item.dart';
import 'package:the_process/widgets/home/project-overview/sections-view/sections_list_view.dart';
import 'package:the_process/widgets/shared/waiting_indicator.dart';

class SectionsView extends StatelessWidget {
  const SectionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SectionsVM?>(
      onInit: (store) => store.dispatch(
          ConnectDatabaseAction(section: DatabaseSectionEnum.sections)),
      distinct: true,
      converter: (store) => store.state.sections,
      builder: (context, vm) {
        if (vm == null || vm.creatingNewSection) {
          return const WaitingIndicator('Creating...');
        }
        return Column(
          children: [
            SectionsListView(vm.list),
            const NewSectionItem(),
          ],
        );
      },
    );
  }
}
