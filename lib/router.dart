import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:color_simulator/pages/test/test_page.dart';
import 'package:color_simulator/pages/hoge/hoge_page.dart';
import 'package:color_simulator/pages/image_picker_page/image_picker_page.dart';
import 'package:color_simulator/pages/color_picker_page/color_picker_page.dart';
import 'package:color_simulator/pages/color_picker_page/color_display_page.dart';
import 'package:color_simulator/pages/image_picker_page/image_blind_page.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
  ),
);

@TypedGoRoute<TestRoute>(
  path: '/',
  routes: [
    TypedGoRoute<HogeRoute>(path: 'hoge'),
    TypedGoRoute<ImagePickerRoute>(path: 'image'),
    TypedGoRoute<ColorPickerRoute>(path: 'color'),
    TypedGoRoute<ColorDisplayRoute>(path: 'color/display'),
    TypedGoRoute<ImageBlindRoute>(path: 'image/display'),
  ],
)
class TestRoute extends GoRouteData {
  const TestRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const TestPage();
}
