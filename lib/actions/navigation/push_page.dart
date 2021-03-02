import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/models/navigation/page_data/page_data.dart';

part 'push_page.freezed.dart';
part 'push_page.g.dart';

@freezed
class PushPage with _$PushPage {
  factory PushPage({required PageData data}) = _PushPage;

  factory PushPage.fromJson(Map<String, dynamic> json) =>
      _$PushPageFromJson(json);
}

// library push_page;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/models/navigation/page_data/page_data.dart';
// import 'package:the_process/serializers.dart';

// part 'push_page.g.dart';

// abstract class PushPage extends Object
//     with ReduxAction
//     implements Built<PushPage, PushPageBuilder> {
//   PageData get data;

//   PushPage._();

//   factory PushPage({required PageData data}) = _$PushPage._;

//   factory PushPage.by([void Function(PushPageBuilder) updates]) = _$PushPage;

//   Object toJson() => serializers.serializeWith(PushPage.serializer, this);

//   // static PushPage fromJson(String jsonString) =>
//   //     serializers.deserializeWith(PushPage.serializer, json.decode(jsonString));

//   static Serializer<PushPage> get serializer => _$pushPageSerializer;

//   @override
//   String toString() => 'PUSH_PAGE';
// }
