import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_process/actions/redux_action.dart';
import 'package:the_process/enums/database/database_section.dart';

part 'connect_database.freezed.dart';
part 'connect_database.g.dart';

@freezed
class ConnectDatabase with _$ConnectDatabase, ReduxAction {
  factory ConnectDatabase({required DatabaseSection section}) =
      _ConnectDatabase;

  factory ConnectDatabase.fromJson(Map<String, dynamic> json) =>
      _$ConnectDatabaseFromJson(json);
}

// library connect_database;

// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:the_process/actions/redux_action.dart';
// import 'package:the_process/enums/database/database_section.dart';
// import 'package:the_process/serializers.dart';

// part 'connect_database.g.dart';

// abstract class ConnectDatabase extends Object
//     with ReduxAction
//     implements Built<ConnectDatabase, ConnectDatabaseBuilder> {
//   DatabaseSection get section;

//   ConnectDatabase._();

//   factory ConnectDatabase({required DatabaseSection section}) =
//       _$ConnectDatabase._;

//   factory ConnectDatabase.by([void Function(ConnectDatabaseBuilder) updates]) =
//       _$ConnectDatabase;

//   Object toJson() =>
//       serializers.serializeWith(ConnectDatabase.serializer, this);

//   // static ConnectDatabase fromJson(String jsonString) => serializers
//   //     .deserializeWith(ConnectDatabase.serializer, json.decode(jsonString));

//   static Serializer<ConnectDatabase> get serializer =>
//       _$connectDatabaseSerializer;

//   @override
//   String toString() => 'CONNECT_DATABASE';
// }
