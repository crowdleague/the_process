// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'store_sections_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreSectionsAction _$StoreSectionsActionFromJson(Map<String, dynamic> json) {
  return _StoreSectionsAction.fromJson(json);
}

/// @nodoc
class _$StoreSectionsActionTearOff {
  const _$StoreSectionsActionTearOff();

  _StoreSectionsAction call({required ImmutableList<Section> list}) {
    return _StoreSectionsAction(
      list: list,
    );
  }

  StoreSectionsAction fromJson(Map<String, Object> json) {
    return StoreSectionsAction.fromJson(json);
  }
}

/// @nodoc
const $StoreSectionsAction = _$StoreSectionsActionTearOff();

/// @nodoc
mixin _$StoreSectionsAction {
  ImmutableList<Section> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSectionsActionCopyWith<StoreSectionsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSectionsActionCopyWith<$Res> {
  factory $StoreSectionsActionCopyWith(
          StoreSectionsAction value, $Res Function(StoreSectionsAction) then) =
      _$StoreSectionsActionCopyWithImpl<$Res>;
  $Res call({ImmutableList<Section> list});
}

/// @nodoc
class _$StoreSectionsActionCopyWithImpl<$Res>
    implements $StoreSectionsActionCopyWith<$Res> {
  _$StoreSectionsActionCopyWithImpl(this._value, this._then);

  final StoreSectionsAction _value;
  // ignore: unused_field
  final $Res Function(StoreSectionsAction) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed ? _value.list : list as ImmutableList<Section>,
    ));
  }
}

/// @nodoc
abstract class _$StoreSectionsActionCopyWith<$Res>
    implements $StoreSectionsActionCopyWith<$Res> {
  factory _$StoreSectionsActionCopyWith(_StoreSectionsAction value,
          $Res Function(_StoreSectionsAction) then) =
      __$StoreSectionsActionCopyWithImpl<$Res>;
  @override
  $Res call({ImmutableList<Section> list});
}

/// @nodoc
class __$StoreSectionsActionCopyWithImpl<$Res>
    extends _$StoreSectionsActionCopyWithImpl<$Res>
    implements _$StoreSectionsActionCopyWith<$Res> {
  __$StoreSectionsActionCopyWithImpl(
      _StoreSectionsAction _value, $Res Function(_StoreSectionsAction) _then)
      : super(_value, (v) => _then(v as _StoreSectionsAction));

  @override
  _StoreSectionsAction get _value => super._value as _StoreSectionsAction;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_StoreSectionsAction(
      list: list == freezed ? _value.list : list as ImmutableList<Section>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StoreSectionsAction implements _StoreSectionsAction {
  _$_StoreSectionsAction({required this.list});

  factory _$_StoreSectionsAction.fromJson(Map<String, dynamic> json) =>
      _$_$_StoreSectionsActionFromJson(json);

  @override
  final ImmutableList<Section> list;

  @override
  String toString() {
    return 'StoreSectionsAction(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StoreSectionsAction &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$StoreSectionsActionCopyWith<_StoreSectionsAction> get copyWith =>
      __$StoreSectionsActionCopyWithImpl<_StoreSectionsAction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoreSectionsActionToJson(this);
  }
}

abstract class _StoreSectionsAction implements StoreSectionsAction {
  factory _StoreSectionsAction({required ImmutableList<Section> list}) =
      _$_StoreSectionsAction;

  factory _StoreSectionsAction.fromJson(Map<String, dynamic> json) =
      _$_StoreSectionsAction.fromJson;

  @override
  ImmutableList<Section> get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoreSectionsActionCopyWith<_StoreSectionsAction> get copyWith =>
      throw _privateConstructorUsedError;
}
