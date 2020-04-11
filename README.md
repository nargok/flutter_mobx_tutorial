# mobxtutorial

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## ライブラリの追加
pubspec.yamlに以下追加

```yaml
dependencies:
  flutter:
    sdk: flutter

  mobx: # 追加
  flutter_mobx: # 追加

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2

dev_dependencies:
  flutter_test:
    sdk: flutter

  build_runner: # 追加
  mobx_codegen: # 追加
```

## Mobx codegenの実行
```
$ flutter packages pub run build_runner watch
```
このコマンド実行により、counter.g.dartというファイルが作成される
その後、↓の2行を追加する
```dart
part 'counter.g.dart';
class Counter = _Counter with _$Counter;
```

こうすると、`@observable`とか、`@action`を使える

## References
https://www.youtube.com/watch?v=p-MUBLOEkCs  
https://itome.team/blog/2019/12/flutter-advent-calendar-day23/
