import 'package:googleapis/firestore/v1.dart';
import 'package:test/test.dart';

import 'package:create_section/src/extensions/googleapis/firestore_document_extensions.dart';

void main() {
  group('DocumentExtension', () {
    test('toGoogleUserCredentials() returns expected GoogleUserCredentials',
        () {
      //   final example fieldsMapValue = Value()..mapValue = MapValue()..
      //   final exampleDocument = Document()..fields = ..;

      //   final googleFields = fields['google']!.mapValue.fields;

      // return GoogleUserCredentials(
      //   accessToken: googleFields['access_token']!.stringValue,
      //   refreshToken: googleFields['refresh_token']!.stringValue,
      //   expiryDate: int.parse(googleFields['expiry_date']!.integerValue),
      //   idToken: googleFields['id_token']!.stringValue,
      //   tokenType: googleFields['token_type']!.stringValue,
      //   scope: googleFields['scope']!.stringValue,

      //   final value = exampleInt.asValue();

      //   expect(value.integerValue, exampleInt.toString());
    });
  });
}
