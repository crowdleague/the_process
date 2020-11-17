// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_authorized;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetAuthorized> _$getAuthorizedSerializer =
    new _$GetAuthorizedSerializer();

class _$GetAuthorizedSerializer implements StructuredSerializer<GetAuthorized> {
  @override
  final Iterable<Type> types = const [GetAuthorized, _$GetAuthorized];
  @override
  final String wireName = 'GetAuthorized';

  @override
  Iterable<Object> serialize(Serializers serializers, GetAuthorized object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  GetAuthorized deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GetAuthorizedBuilder().build();
  }
}

class _$GetAuthorized extends GetAuthorized {
  factory _$GetAuthorized([void Function(GetAuthorizedBuilder) updates]) =>
      (new GetAuthorizedBuilder()..update(updates)).build();

  _$GetAuthorized._() : super._();

  @override
  GetAuthorized rebuild(void Function(GetAuthorizedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorizedBuilder toBuilder() => new GetAuthorizedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorized;
  }

  @override
  int get hashCode {
    return 183211933;
  }
}

class GetAuthorizedBuilder
    implements Builder<GetAuthorized, GetAuthorizedBuilder> {
  _$GetAuthorized _$v;

  GetAuthorizedBuilder();

  @override
  void replace(GetAuthorized other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetAuthorized;
  }

  @override
  void update(void Function(GetAuthorizedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAuthorized build() {
    final _$result = _$v ?? new _$GetAuthorized._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
