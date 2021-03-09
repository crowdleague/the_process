import 'package:test/test.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/utils/immutable_collections/immutable_list.dart';

void main() {
  group('ImmutableList', () {
    test('.serializes', () {
      var sections = ImmutableList<Section>();
      for (var i = 0; i < 5; i++) {
        sections = sections.copyAndAdd(Section(
            name: 'name$i',
            folderId: 'folderId$i',
            useCasesDocId: 'usecase$i'));
      }
      print(sections.toJson());
    });
  });
}
