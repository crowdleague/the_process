import 'package:freezed_annotation/freezed_annotation.dart';

import 'hash_utils.dart';

part 'immutable_list.g.dart';

/// Performs a shallow copy of [from] so if T is immutable then
/// ImmutableList<T> is immutable but if T is mutable then
/// ImmutableList<T> is technically mutable (as the caller can potentially
/// mutate the objects that were passed in the original list)
///
/// copyAnd... makes a copy, mutates then creates the ImmutableList
/// - we use a private constructor that sets the member to the mutated list
///   without copying, for efficiency
///
/// Contract
/// - _list is never exposed
/// - the constructor parameter is cloned rather than assigned
///   - except in the private constructor
/// - the private constructor is only used after copying a list
/// - we never mutate _list
///
@JsonSerializable()
class ImmutableList<T> {
  final List<T> _list;
  ImmutableList({List<T>? from}) : _list = (from != null) ? [...from] : [];

  ImmutableList._(List<T> list) : _list = list;

  ImmutableList<T> copyAndAdd(T item) => ImmutableList._([..._list, item]);
  ImmutableList<T> copyAndRemove(T item) =>
      ImmutableList._([..._list]..remove(item));
  ImmutableList<T> copyAndRemoveLast() =>
      ImmutableList._([..._list]..removeLast());
  List<T> copyToList() => [..._list];

  int get length => _list.length;
  T get first => _list.first;

  T operator [](int i) => _list[i]; // get

  factory ImmutableList.fromJson(Map<String, dynamic> json) =>
      _$ImmutableListFromJson(json);

  @override
  bool operator ==(o) =>
      o is ImmutableList && DeepCollectionEquality().equals(o, _list);

  @override
  int get hashCode => hashList(_list);
}
