// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {TeamMember? teamMember,
      required AuthStep authStep,
      AuthUserData? authUserData,
      required List<PageData> pagesData,
      required List<Problem> problems,
      ProfileData? profileData,
      required SectionsVM sections,
      required Settings settings}) {
    return _AppState(
      teamMember: teamMember,
      authStep: authStep,
      authUserData: authUserData,
      pagesData: pagesData,
      problems: problems,
      profileData: profileData,
      sections: sections,
      settings: settings,
    );
  }

  AppState fromJson(Map<String, Object> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  /// Teams
  TeamMember? get teamMember => throw _privateConstructorUsedError;

  /// Auth
  AuthStep get authStep => throw _privateConstructorUsedError;
  AuthUserData? get authUserData => throw _privateConstructorUsedError;

  /// Navigation
  List<PageData> get pagesData => throw _privateConstructorUsedError;

  /// Problems
  List<Problem> get problems => throw _privateConstructorUsedError;

  /// Profile
  ProfileData? get profileData => throw _privateConstructorUsedError;

  /// Sections
  SectionsVM get sections => throw _privateConstructorUsedError;

  /// Settings
  Settings get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {TeamMember? teamMember,
      AuthStep authStep,
      AuthUserData? authUserData,
      List<PageData> pagesData,
      List<Problem> problems,
      ProfileData? profileData,
      SectionsVM sections,
      Settings settings});

  $TeamMemberCopyWith<$Res>? get teamMember;
  $AuthUserDataCopyWith<$Res>? get authUserData;
  $ProfileDataCopyWith<$Res>? get profileData;
  $SectionsVMCopyWith<$Res> get sections;
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? teamMember = freezed,
    Object? authStep = freezed,
    Object? authUserData = freezed,
    Object? pagesData = freezed,
    Object? problems = freezed,
    Object? profileData = freezed,
    Object? sections = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      teamMember:
          teamMember == freezed ? _value.teamMember : teamMember as TeamMember?,
      authStep: authStep == freezed ? _value.authStep : authStep as AuthStep,
      authUserData: authUserData == freezed
          ? _value.authUserData
          : authUserData as AuthUserData?,
      pagesData:
          pagesData == freezed ? _value.pagesData : pagesData as List<PageData>,
      problems:
          problems == freezed ? _value.problems : problems as List<Problem>,
      profileData: profileData == freezed
          ? _value.profileData
          : profileData as ProfileData?,
      sections: sections == freezed ? _value.sections : sections as SectionsVM,
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }

  @override
  $TeamMemberCopyWith<$Res>? get teamMember {
    if (_value.teamMember == null) {
      return null;
    }

    return $TeamMemberCopyWith<$Res>(_value.teamMember!, (value) {
      return _then(_value.copyWith(teamMember: value));
    });
  }

  @override
  $AuthUserDataCopyWith<$Res>? get authUserData {
    if (_value.authUserData == null) {
      return null;
    }

    return $AuthUserDataCopyWith<$Res>(_value.authUserData!, (value) {
      return _then(_value.copyWith(authUserData: value));
    });
  }

  @override
  $ProfileDataCopyWith<$Res>? get profileData {
    if (_value.profileData == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.profileData!, (value) {
      return _then(_value.copyWith(profileData: value));
    });
  }

  @override
  $SectionsVMCopyWith<$Res> get sections {
    return $SectionsVMCopyWith<$Res>(_value.sections, (value) {
      return _then(_value.copyWith(sections: value));
    });
  }

  @override
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TeamMember? teamMember,
      AuthStep authStep,
      AuthUserData? authUserData,
      List<PageData> pagesData,
      List<Problem> problems,
      ProfileData? profileData,
      SectionsVM sections,
      Settings settings});

  @override
  $TeamMemberCopyWith<$Res>? get teamMember;
  @override
  $AuthUserDataCopyWith<$Res>? get authUserData;
  @override
  $ProfileDataCopyWith<$Res>? get profileData;
  @override
  $SectionsVMCopyWith<$Res> get sections;
  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? teamMember = freezed,
    Object? authStep = freezed,
    Object? authUserData = freezed,
    Object? pagesData = freezed,
    Object? problems = freezed,
    Object? profileData = freezed,
    Object? sections = freezed,
    Object? settings = freezed,
  }) {
    return _then(_AppState(
      teamMember:
          teamMember == freezed ? _value.teamMember : teamMember as TeamMember?,
      authStep: authStep == freezed ? _value.authStep : authStep as AuthStep,
      authUserData: authUserData == freezed
          ? _value.authUserData
          : authUserData as AuthUserData?,
      pagesData:
          pagesData == freezed ? _value.pagesData : pagesData as List<PageData>,
      problems:
          problems == freezed ? _value.problems : problems as List<Problem>,
      profileData: profileData == freezed
          ? _value.profileData
          : profileData as ProfileData?,
      sections: sections == freezed ? _value.sections : sections as SectionsVM,
      settings: settings == freezed ? _value.settings : settings as Settings,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppState implements _AppState {
  _$_AppState(
      {this.teamMember,
      required this.authStep,
      this.authUserData,
      required this.pagesData,
      required this.problems,
      this.profileData,
      required this.sections,
      required this.settings});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStateFromJson(json);

  @override

  /// Teams
  final TeamMember? teamMember;
  @override

  /// Auth
  final AuthStep authStep;
  @override
  final AuthUserData? authUserData;
  @override

  /// Navigation
  final List<PageData> pagesData;
  @override

  /// Problems
  final List<Problem> problems;
  @override

  /// Profile
  final ProfileData? profileData;
  @override

  /// Sections
  final SectionsVM sections;
  @override

  /// Settings
  final Settings settings;

  @override
  String toString() {
    return 'AppState(teamMember: $teamMember, authStep: $authStep, authUserData: $authUserData, pagesData: $pagesData, problems: $problems, profileData: $profileData, sections: $sections, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.teamMember, teamMember) ||
                const DeepCollectionEquality()
                    .equals(other.teamMember, teamMember)) &&
            (identical(other.authStep, authStep) ||
                const DeepCollectionEquality()
                    .equals(other.authStep, authStep)) &&
            (identical(other.authUserData, authUserData) ||
                const DeepCollectionEquality()
                    .equals(other.authUserData, authUserData)) &&
            (identical(other.pagesData, pagesData) ||
                const DeepCollectionEquality()
                    .equals(other.pagesData, pagesData)) &&
            (identical(other.problems, problems) ||
                const DeepCollectionEquality()
                    .equals(other.problems, problems)) &&
            (identical(other.profileData, profileData) ||
                const DeepCollectionEquality()
                    .equals(other.profileData, profileData)) &&
            (identical(other.sections, sections) ||
                const DeepCollectionEquality()
                    .equals(other.sections, sections)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(teamMember) ^
      const DeepCollectionEquality().hash(authStep) ^
      const DeepCollectionEquality().hash(authUserData) ^
      const DeepCollectionEquality().hash(pagesData) ^
      const DeepCollectionEquality().hash(problems) ^
      const DeepCollectionEquality().hash(profileData) ^
      const DeepCollectionEquality().hash(sections) ^
      const DeepCollectionEquality().hash(settings);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {TeamMember? teamMember,
      required AuthStep authStep,
      AuthUserData? authUserData,
      required List<PageData> pagesData,
      required List<Problem> problems,
      ProfileData? profileData,
      required SectionsVM sections,
      required Settings settings}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override

  /// Teams
  TeamMember? get teamMember => throw _privateConstructorUsedError;
  @override

  /// Auth
  AuthStep get authStep => throw _privateConstructorUsedError;
  @override
  AuthUserData? get authUserData => throw _privateConstructorUsedError;
  @override

  /// Navigation
  List<PageData> get pagesData => throw _privateConstructorUsedError;
  @override

  /// Problems
  List<Problem> get problems => throw _privateConstructorUsedError;
  @override

  /// Profile
  ProfileData? get profileData => throw _privateConstructorUsedError;
  @override

  /// Sections
  SectionsVM get sections => throw _privateConstructorUsedError;
  @override

  /// Settings
  Settings get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
