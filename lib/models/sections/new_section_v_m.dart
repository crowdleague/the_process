library new_section_v_m;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:the_process/serializers.dart';

part 'new_section_v_m.g.dart';

abstract class NewSectionVM
    implements Built<NewSectionVM, NewSectionVMBuilder> {
  String get name;
  int get number;

  NewSectionVM._();

  factory NewSectionVM({@required String name}) = _$NewSectionVM._;

  factory NewSectionVM.by([void Function(NewSectionVMBuilder) updates]) =
      _$NewSectionVM;

  Object toJson() => serializers.serializeWith(NewSectionVM.serializer, this);

  static NewSectionVM fromJson(String jsonString) => serializers
      .deserializeWith(NewSectionVM.serializer, json.decode(jsonString));

  static Serializer<NewSectionVM> get serializer => _$newSectionVMSerializer;
}
