import 'package:googleapis/firestore/v1.dart';

Document get basicDoc => Document()
  ..createTime = DateTime.parse('2012-02-27').millisecondsSinceEpoch.toString()
  ..name = 'testName'
  ..updateTime = DateTime.parse('2012-03-27').millisecondsSinceEpoch.toString()
  ..fields = {
    'a': Value()..stringValue = 'string',
    'b': Value()..integerValue = '10'
  };
