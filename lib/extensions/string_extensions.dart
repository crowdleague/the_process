import 'package:the_process/enums/auth/provider_name.dart';

extension EnumParser on String {
  ProviderName toProviderNameEnum() {
    return ProviderName.values
        .firstWhere((e) => e.toString().toLowerCase() == 'providerName.$this');
  }
}
