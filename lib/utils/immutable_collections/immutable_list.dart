class ImmutableList<T> {
  final List<T> _list = [];

  ImmutableList(List<T> list) {
    _list.addAll(list);
  }

  ImmutableList copyAndAdd(T item) => ImmutableList([..._list]..add(item));
  ImmutableList copyAndRemove(T item) =>
      ImmutableList([..._list]..remove(item));
}
