import 'package:flutter/foundation.dart';

/// Reports a missing or undefined `<defs>` element.
void reportMissingDef(String? href, String methodName) {
  if (kDebugMode) {
    print(
      '[FLUTTER_SVG] ERROR: Failed to find definition for $href.\n'
      'This library only supports <defs> and xlink:href references that are defined ahead of their references.\n'
      'This error can be caused when the desired definition is defined after the element referring to it (e.g. at the end of the file), or defined in another file.\n'
      'This error is treated as non-fatal, but your SVG file will likely not render as intended',
    );
  }
}
