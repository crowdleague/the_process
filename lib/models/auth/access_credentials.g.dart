// GENERATED CODE - DO NOT MODIFY BY HAND

part of access_credentials;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccessCredentials> _$accessCredentialsSerializer =
    new _$AccessCredentialsSerializer();

class _$AccessCredentialsSerializer
    implements StructuredSerializer<AccessCredentials> {
  @override
  final Iterable<Type> types = const [AccessCredentials, _$AccessCredentials];
  @override
  final String wireName = 'AccessCredentials';

  @override
  Iterable<Object> serialize(Serializers serializers, AccessCredentials object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'idToken',
      serializers.serialize(object.idToken,
          specifiedType: const FullType(String)),
      'scopes',
      serializers.serialize(object.scopes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  AccessCredentials deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccessCredentialsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idToken':
          result.idToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AccessCredentials extends AccessCredentials {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String idToken;
  @override
  final BuiltList<String> scopes;

  factory _$AccessCredentials(
          [void Function(AccessCredentialsBuilder) updates]) =>
      (new AccessCredentialsBuilder()..update(updates)).build();

  _$AccessCredentials._(
      {this.accessToken, this.refreshToken, this.idToken, this.scopes})
      : super._() {
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('AccessCredentials', 'accessToken');
    }
    if (refreshToken == null) {
      throw new BuiltValueNullFieldError('AccessCredentials', 'refreshToken');
    }
    if (idToken == null) {
      throw new BuiltValueNullFieldError('AccessCredentials', 'idToken');
    }
    if (scopes == null) {
      throw new BuiltValueNullFieldError('AccessCredentials', 'scopes');
    }
  }

  @override
  AccessCredentials rebuild(void Function(AccessCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessCredentialsBuilder toBuilder() =>
      new AccessCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessCredentials &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        idToken == other.idToken &&
        scopes == other.scopes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessToken.hashCode), refreshToken.hashCode),
            idToken.hashCode),
        scopes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccessCredentials')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('idToken', idToken)
          ..add('scopes', scopes))
        .toString();
  }
}

class AccessCredentialsBuilder
    implements Builder<AccessCredentials, AccessCredentialsBuilder> {
  _$AccessCredentials _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  String _idToken;
  String get idToken => _$this._idToken;
  set idToken(String idToken) => _$this._idToken = idToken;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  AccessCredentialsBuilder();

  AccessCredentialsBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _refreshToken = _$v.refreshToken;
      _idToken = _$v.idToken;
      _scopes = _$v.scopes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessCredentials other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccessCredentials;
  }

  @override
  void update(void Function(AccessCredentialsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccessCredentials build() {
    _$AccessCredentials _$result;
    try {
      _$result = _$v ??
          new _$AccessCredentials._(
              accessToken: accessToken,
              refreshToken: refreshToken,
              idToken: idToken,
              scopes: scopes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        scopes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccessCredentials', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
