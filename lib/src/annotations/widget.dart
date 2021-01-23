/// Writing a Widget becomes much simpler with the `@Wdg` annotation. You can just give it a function with needed parameters which returns a new Widget and the generators will figure out a Widget class to go along with it.
/// ```dart
///@Wdg
///Widget helloName(String name, {String lastname = '', Context context}) => For.of([
///  Comment('This was generated by HelloName on version ${context.version}'),
///  Log('Hello $name $lastname!'),
///]);
///```
const Wdg = WidgetAnnotation();

/// Writing a Widget becomes much simpler with the `@WidgetAnnotation()` annotation. You can just give it a function with needed parameters which returns a new Widget and the generators will figure out a Widget class to go along with it.
class WidgetAnnotation {
  final bool assertions;
  final bool restAction;

  /// Writing a Widget becomes much simpler with the `@WidgetAnnotation()` annotation. You can just give it a function with needed parameters which returns a new Widget and the generators will figure out a Widget class to go along with it.
  const WidgetAnnotation({this.assertions = false, this.restAction = false});
}
