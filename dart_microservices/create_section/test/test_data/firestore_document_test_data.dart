import 'package:googleapis/firestore/v1.dart';
import 'package:create_section/src/extensions/string_extensions.dart';
import 'package:create_section/src/extensions/int_extensions.dart';

Document get basicDoc => Document()
  ..createTime = DateTime.parse('2012-02-27').millisecondsSinceEpoch.toString()
  ..name = 'testName'
  ..updateTime = DateTime.parse('2012-03-27').millisecondsSinceEpoch.toString()
  ..fields = {
    'a': Value()..stringValue = 'string',
    'b': Value()..integerValue = '10'
  };

Document get userCredentialsDoc => Document()
  ..createTime = DateTime.parse('2012-02-27').millisecondsSinceEpoch.toString()
  ..name = 'testName'
  ..updateTime = DateTime.parse('2012-03-27').millisecondsSinceEpoch.toString()
  ..fields = {
    'google': Value()
      ..mapValue = (MapValue()
        ..fields = {
          'access_token': 'access_token'.asValue(),
          'refresh_token': 'refresh_token'.asValue(),
          'expiry_date': 10.asValue(),
          'id_token': 'id_token'.asValue(),
          'token_type': 'token_type'.asValue(),
          'scope': 'scope'.asValue()
        }),
  };
