import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_current_page.freezed.dart';
part 'remove_current_page.g.dart';

@freezed
class RemoveCurrentPage with _$RemoveCurrentPage {
  factory RemoveCurrentPage() = _RemoveCurrentPage;

  factory RemoveCurrentPage.fromJson(Map<String, dynamic> json) =>
      _$RemoveCurrentPageFromJson(json);
}

// library remove_current_page;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/serializers.dart';

// part 'remove_current_page.g.dart';

// abstract class RemoveCurrentPage extends Object
//     with ReduxAction
//     implements Built<RemoveCurrentPage, RemoveCurrentPageBuilder> {
//   RemoveCurrentPage._();

//   factory RemoveCurrentPage() = _$RemoveCurrentPage._;

//   Object toJson() =>
//       serializers.serializeWith(RemoveCurrentPage.serializer, this);

//   // static RemoveCurrentPage fromJson(String jsonString) => serializers
//   //     .deserializeWith(RemoveCurrentPage.serializer, json.decode(jsonString));

//   static Serializer<RemoveCurrentPage> get serializer =>
//       _$removeCurrentPageSerializer;

//   @override
//   String toString() => 'REMOVE_CURRENT_PAGE';
// }
