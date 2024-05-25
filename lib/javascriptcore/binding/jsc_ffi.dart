import 'dart:ffi';
import 'dart:io';

class JscFfi {
  /// You can replace it with the version you want
  static DynamicLibrary lib = Platform.isIOS || Platform.isMacOS
      // or use:
      // DynamicLibrary.open('/System/Library/Frameworks/JavaScriptCore.framework/JavaScriptCore')
      ? DynamicLibrary.process()
      : Platform.isWindows
          ? DynamicLibrary.open('JavaScriptCore.dll')
          : Platform.isLinux
              ? DynamicLibrary.open('libjavascriptcoregtk-4.0.so.18')
              : DynamicLibrary.open('libjsc.so');
}
