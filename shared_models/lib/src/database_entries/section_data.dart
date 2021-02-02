import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_data.freezed.dart';
part 'section_data.g.dart';

@freezed
abstract class SectionData with _$SectionData {
  factory SectionData(
      {required String name,
      String? folderId,
      String? useCasesDocId}) = _SectionData;

  factory SectionData.fromJson(Map<String, dynamic> json) =>
      _$SectionDataFromJson(json);
}
