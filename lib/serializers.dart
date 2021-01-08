import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:the_process/actions/app_init/plumb_streams.dart';
import 'package:the_process/actions/auth/get_authorized.dart';
import 'package:the_process/actions/auth/observe_auth_state.dart';
import 'package:the_process/actions/auth/sign_in_with_apple.dart';
import 'package:the_process/actions/auth/sign_in_with_google.dart';
import 'package:the_process/actions/auth/sign_out.dart';
import 'package:the_process/actions/auth/store_auth_step.dart';
import 'package:the_process/actions/auth/store_auth_user_data.dart';
import 'package:the_process/actions/navigation/push_page.dart';
import 'package:the_process/actions/navigation/remove_current_page.dart';
import 'package:the_process/actions/navigation/store_nav_bar_selection.dart';
import 'package:the_process/actions/platform/detect_platform.dart';
import 'package:the_process/actions/problems/add_problem.dart';
import 'package:the_process/actions/problems/remove_problem.dart';
import 'package:the_process/actions/profile/disregard_profile_data.dart';
import 'package:the_process/actions/profile/observe_profile_data.dart';
import 'package:the_process/actions/profile/store_profile_data.dart';
import 'package:the_process/actions/sections/create_section.dart';
import 'package:the_process/actions/sections/store_sections.dart';
import 'package:the_process/actions/sections/update_new_section_v_m.dart';
import 'package:the_process/actions/sections/update_sections_v_m.dart';
import 'package:the_process/actions/settings/update_settings.dart';
import 'package:the_process/actions/shared/connect_database.dart';
import 'package:the_process/enums/auth/auth_step.dart';
import 'package:the_process/enums/auth/authorization_step.dart';
import 'package:the_process/enums/auth/provider_name.dart';
import 'package:the_process/enums/database/database_section.dart';
import 'package:the_process/enums/navigation/nav_bar_selection.dart';
import 'package:the_process/enums/platform/platform_enum.dart';
import 'package:the_process/enums/settings/brightness_mode.dart';
import 'package:the_process/enums/settings/theme_brightness.dart';
import 'package:the_process/models/app_state/app_state.dart';
import 'package:the_process/models/auth/auth_provider_data.dart';
import 'package:the_process/models/auth/auth_user_data.dart';
import 'package:the_process/models/navigation/page_data/initial_page_data.dart';
import 'package:the_process/models/navigation/page_data/page_data.dart';
import 'package:the_process/models/navigation/page_data/profile_page_data.dart';
import 'package:the_process/models/problems/problem.dart';
import 'package:the_process/models/profile/profile_data.dart';
import 'package:the_process/models/sections/new_section_v_m.dart';
import 'package:the_process/models/sections/section.dart';
import 'package:the_process/models/sections/sections_v_m.dart';
import 'package:the_process/models/settings/settings.dart';
import 'package:the_process/models/settings/theme_colors.dart';
import 'package:the_process/models/settings/theme_set.dart';
import 'package:the_process/models/team/team_member.dart';

part 'serializers.g.dart';

/// Once per app, define a top level "Serializer" to gather together
/// all the generated serializers.
///
/// Collection of generated serializers for the AdventuresIn app
@SerializersFor([
  AddProblem,
  AppState,
  AuthorizationStep,
  AuthProviderData,
  AuthUserData,
  AuthStep,
  BrightnessMode,
  ConnectDatabase,
  CreateSection,
  DatabaseSection,
  DetectPlatform,
  DisregardProfileData,
  GetAuthorized,
  InitialPageData,
  NavBarSelection,
  NewSectionVM,
  ObserveProfileData,
  ObserveAuthState,
  PageData,
  PlatformEnum,
  PlumbStreams,
  Problem,
  ProfileData,
  ProfilePageData,
  ProviderName,
  PushPage,
  RemoveCurrentPage,
  RemoveProblem,
  Section,
  SectionsVM,
  Settings,
  SignInWithApple,
  SignInWithGoogle,
  SignOut,
  StoreProfileData,
  StoreAuthStep,
  StoreAuthUserData,
  StoreNavBarSelection,
  StoreSections,
  TeamMember,
  ThemeBrightness,
  ThemeColors,
  ThemeSet,
  UpdateNewSectionVM,
  UpdateSectionsVM,
  UpdateSettings,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
