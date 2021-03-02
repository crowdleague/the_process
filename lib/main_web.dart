import 'dart:html';

import 'package:flutter/material.dart';
import 'package:the_process/widgets/app_widget/app_widget.dart';

void main() {
  createScriptElement();

  runApp(AppWidget());
}

void createScriptElement() {
  /// Create a new JS element
  final script = ScriptElement();

  /// On that script element, add the `src` and `id` properties
  script.src = 'https://www.some-website-with-api/api=}';
  script.id = 'super-script';

  document.body?.children.insert(0, script);
}
