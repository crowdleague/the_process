// Mocks generated by Mockito 5.0.0-nullsafety.7 from annotations
// in create_section/test/test_doubles/apis/secretmanager_api_test_doubles.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:googleapis/secretmanager/v1.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeProjectsResourceApi extends _i1.Fake
    implements _i2.ProjectsResourceApi {}

class _FakeProjectsLocationsResourceApi extends _i1.Fake
    implements _i2.ProjectsLocationsResourceApi {}

class _FakeProjectsSecretsResourceApi extends _i1.Fake
    implements _i2.ProjectsSecretsResourceApi {}

class _FakeProjectsSecretsVersionsResourceApi extends _i1.Fake
    implements _i2.ProjectsSecretsVersionsResourceApi {}

class _FakeSecretVersion extends _i1.Fake implements _i2.SecretVersion {}

class _FakeSecret extends _i1.Fake implements _i2.Secret {}

class _FakeEmpty extends _i1.Fake implements _i2.Empty {}

class _FakePolicy extends _i1.Fake implements _i2.Policy {}

class _FakeListSecretsResponse extends _i1.Fake
    implements _i2.ListSecretsResponse {}

class _FakeTestIamPermissionsResponse extends _i1.Fake
    implements _i2.TestIamPermissionsResponse {}

class _FakeAccessSecretVersionResponse extends _i1.Fake
    implements _i2.AccessSecretVersionResponse {}

class _FakeListSecretVersionsResponse extends _i1.Fake
    implements _i2.ListSecretVersionsResponse {}

class _FakeSecretPayload extends _i1.Fake implements _i2.SecretPayload {}

/// A class which mocks [SecretmanagerApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecretmanagerApi extends _i1.Mock implements _i2.SecretmanagerApi {
  MockSecretmanagerApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ProjectsResourceApi get projects =>
      (super.noSuchMethod(Invocation.getter(#projects),
          returnValue: _FakeProjectsResourceApi()) as _i2.ProjectsResourceApi);
}

/// A class which mocks [ProjectsResourceApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectsResourceApi extends _i1.Mock
    implements _i2.ProjectsResourceApi {
  MockProjectsResourceApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ProjectsLocationsResourceApi get locations =>
      (super.noSuchMethod(Invocation.getter(#locations),
              returnValue: _FakeProjectsLocationsResourceApi())
          as _i2.ProjectsLocationsResourceApi);
  @override
  _i2.ProjectsSecretsResourceApi get secrets =>
      (super.noSuchMethod(Invocation.getter(#secrets),
              returnValue: _FakeProjectsSecretsResourceApi())
          as _i2.ProjectsSecretsResourceApi);
}

/// A class which mocks [ProjectsSecretsResourceApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectsSecretsResourceApi extends _i1.Mock
    implements _i2.ProjectsSecretsResourceApi {
  MockProjectsSecretsResourceApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ProjectsSecretsVersionsResourceApi get versions =>
      (super.noSuchMethod(Invocation.getter(#versions),
              returnValue: _FakeProjectsSecretsVersionsResourceApi())
          as _i2.ProjectsSecretsVersionsResourceApi);
  @override
  _i3.Future<_i2.SecretVersion> addVersion(
          _i2.AddSecretVersionRequest? request, String? parent,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #addVersion, [request, parent], {#$fields: $fields}),
              returnValue: Future.value(_FakeSecretVersion()))
          as _i3.Future<_i2.SecretVersion>);
  @override
  _i3.Future<_i2.Secret> create(_i2.Secret? request, String? parent,
          {String? secretId, String? $fields}) =>
      (super.noSuchMethod(
          Invocation.method(#create, [request, parent],
              {#secretId: secretId, #$fields: $fields}),
          returnValue: Future.value(_FakeSecret())) as _i3.Future<_i2.Secret>);
  @override
  _i3.Future<_i2.Empty> delete(String? name, {String? $fields}) => (super
      .noSuchMethod(Invocation.method(#delete, [name], {#$fields: $fields}),
          returnValue: Future.value(_FakeEmpty())) as _i3.Future<_i2.Empty>);
  @override
  _i3.Future<_i2.Secret> get(String? name, {String? $fields}) =>
      (super.noSuchMethod(Invocation.method(#get, [name], {#$fields: $fields}),
          returnValue: Future.value(_FakeSecret())) as _i3.Future<_i2.Secret>);
  @override
  _i3.Future<_i2.Policy> getIamPolicy(String? resource,
          {int? options_requestedPolicyVersion, String? $fields}) =>
      (super.noSuchMethod(
          Invocation.method(#getIamPolicy, [
            resource
          ], {
            #options_requestedPolicyVersion: options_requestedPolicyVersion,
            #$fields: $fields
          }),
          returnValue: Future.value(_FakePolicy())) as _i3.Future<_i2.Policy>);
  @override
  _i3.Future<_i2.ListSecretsResponse> list(String? parent,
          {int? pageSize, String? pageToken, String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#list, [
                parent
              ], {
                #pageSize: pageSize,
                #pageToken: pageToken,
                #$fields: $fields
              }),
              returnValue: Future.value(_FakeListSecretsResponse()))
          as _i3.Future<_i2.ListSecretsResponse>);
  @override
  _i3.Future<_i2.Secret> patch(_i2.Secret? request, String? name,
          {String? updateMask, String? $fields}) =>
      (super.noSuchMethod(
          Invocation.method(#patch, [request, name],
              {#updateMask: updateMask, #$fields: $fields}),
          returnValue: Future.value(_FakeSecret())) as _i3.Future<_i2.Secret>);
  @override
  _i3.Future<_i2.Policy> setIamPolicy(
          _i2.SetIamPolicyRequest? request, String? resource,
          {String? $fields}) =>
      (super.noSuchMethod(
          Invocation.method(
              #setIamPolicy, [request, resource], {#$fields: $fields}),
          returnValue: Future.value(_FakePolicy())) as _i3.Future<_i2.Policy>);
  @override
  _i3.Future<_i2.TestIamPermissionsResponse> testIamPermissions(
          _i2.TestIamPermissionsRequest? request, String? resource,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#testIamPermissions, [request, resource],
                  {#$fields: $fields}),
              returnValue: Future.value(_FakeTestIamPermissionsResponse()))
          as _i3.Future<_i2.TestIamPermissionsResponse>);
}

/// A class which mocks [ProjectsSecretsVersionsResourceApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectsSecretsVersionsResourceApi extends _i1.Mock
    implements _i2.ProjectsSecretsVersionsResourceApi {
  MockProjectsSecretsVersionsResourceApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i2.AccessSecretVersionResponse> access(String? name,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#access, [name], {#$fields: $fields}),
              returnValue: Future.value(_FakeAccessSecretVersionResponse()))
          as _i3.Future<_i2.AccessSecretVersionResponse>);
  @override
  _i3.Future<_i2.SecretVersion> destroy(
          _i2.DestroySecretVersionRequest? request, String? name,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#destroy, [request, name], {#$fields: $fields}),
              returnValue: Future.value(_FakeSecretVersion()))
          as _i3.Future<_i2.SecretVersion>);
  @override
  _i3.Future<_i2.SecretVersion> disable(
          _i2.DisableSecretVersionRequest? request, String? name,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#disable, [request, name], {#$fields: $fields}),
              returnValue: Future.value(_FakeSecretVersion()))
          as _i3.Future<_i2.SecretVersion>);
  @override
  _i3.Future<_i2.SecretVersion> enable(
          _i2.EnableSecretVersionRequest? request, String? name,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#enable, [request, name], {#$fields: $fields}),
              returnValue: Future.value(_FakeSecretVersion()))
          as _i3.Future<_i2.SecretVersion>);
  @override
  _i3.Future<_i2.SecretVersion> get(String? name, {String? $fields}) =>
      (super.noSuchMethod(Invocation.method(#get, [name], {#$fields: $fields}),
              returnValue: Future.value(_FakeSecretVersion()))
          as _i3.Future<_i2.SecretVersion>);
  @override
  _i3.Future<_i2.ListSecretVersionsResponse> list(String? parent,
          {int? pageSize, String? pageToken, String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#list, [
                parent
              ], {
                #pageSize: pageSize,
                #pageToken: pageToken,
                #$fields: $fields
              }),
              returnValue: Future.value(_FakeListSecretVersionsResponse()))
          as _i3.Future<_i2.ListSecretVersionsResponse>);
}

/// A class which mocks [AccessSecretVersionResponse].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccessSecretVersionResponse extends _i1.Mock
    implements _i2.AccessSecretVersionResponse {
  MockAccessSecretVersionResponse() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  set name(String? _name) => super.noSuchMethod(Invocation.setter(#name, _name),
      returnValueForMissingStub: null);
  @override
  _i2.SecretPayload get payload =>
      (super.noSuchMethod(Invocation.getter(#payload),
          returnValue: _FakeSecretPayload()) as _i2.SecretPayload);
  @override
  set payload(_i2.SecretPayload? _payload) =>
      super.noSuchMethod(Invocation.setter(#payload, _payload),
          returnValueForMissingStub: null);
  @override
  Map<String, Object> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, Object>{}) as Map<String, Object>);
}

/// A class which mocks [SecretPayload].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecretPayload extends _i1.Mock implements _i2.SecretPayload {
  MockSecretPayload() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get data =>
      (super.noSuchMethod(Invocation.getter(#data), returnValue: '') as String);
  @override
  set data(String? _data) => super.noSuchMethod(Invocation.setter(#data, _data),
      returnValueForMissingStub: null);
  @override
  List<int> get dataAsBytes =>
      (super.noSuchMethod(Invocation.getter(#dataAsBytes), returnValue: <int>[])
          as List<int>);
  @override
  set dataAsBytes(List<int>? _bytes) =>
      super.noSuchMethod(Invocation.setter(#dataAsBytes, _bytes),
          returnValueForMissingStub: null);
  @override
  Map<String, Object> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, Object>{}) as Map<String, Object>);
}
