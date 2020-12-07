import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:the_process/serializers.dart';

part 'android_notification_priority.g.dart';

class AndroidNotificationPriority extends EnumClass {
  static const AndroidNotificationPriority minimumPriority = _$minimumPriority;
  static const AndroidNotificationPriority lowPriority = _$lowPriority;
  static const AndroidNotificationPriority defaultPriority = _$defaultPriority;
  static const AndroidNotificationPriority highPriority = _$highPriority;
  static const AndroidNotificationPriority maximumPriority = _$maximumPriority;

  const AndroidNotificationPriority._(String name) : super(name);

  int get index => _$indexMap[this];
  static final _$indexMap = BuiltMap<AndroidNotificationPriority, int>({
    minimumPriority: 0,
    lowPriority: 1,
    defaultPriority: 2,
    highPriority: 3,
    maximumPriority: 4
  });

  static BuiltSet<AndroidNotificationPriority> get values => _$values;
  static AndroidNotificationPriority valueOf(String name) => _$valueOf(name);

  static Serializer<AndroidNotificationPriority> get serializer =>
      _$androidNotificationPrioritySerializer;

  Object toJson() =>
      serializers.serializeWith(AndroidNotificationPriority.serializer, this);
}
