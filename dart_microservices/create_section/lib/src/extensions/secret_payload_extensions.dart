import 'dart:convert';

import 'package:googleapis/secretmanager/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

extension SecretPayloadExtension on SecretPayload {
  Map<String, dynamic> get dataAsJson => json.decode(utf8.decode(dataAsBytes));

  ClientId toClientId() {
    final json = dataAsJson;
    return ClientId(json['google']['id'], json['google']['secret']);
  }
}
