import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  factory Section({
    required String name,
    required String folderId,
    required String useCasesDocId,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

// library section;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/serializers.dart';

// part 'section.g.dart';

// abstract class Section implements Built<Section, SectionBuilder> {
//   String get name;
//   String get folderId;
//   String get useCasesDocId;

//   Section._();

//   factory Section(
//       {required String name,
//       required String folderId,
//       required String useCasesDocId}) = _$Section._;

//   factory Section.by([void Function(SectionBuilder) updates]) = _$Section;

//   Object toJson() => serializers.serializeWith(Section.serializer, this);

//   // static Section fromJson(String jsonString) =>
//   //     serializers.deserializeWith(Section.serializer, json.decode(jsonString));

//   static Serializer<Section> get serializer => _$sectionSerializer;
// }
