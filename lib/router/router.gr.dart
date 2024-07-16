// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:gymwebapp/pages/view/web/applicationform.dart' as _i1;
import 'package:gymwebapp/pages/view/web/loginpage.dart' as _i3;
import 'package:gymwebapp/screenhandler.dart' as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    GymFormPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.GymFormPage(),
      );
    },
    RouteHandlerPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ScreenHandlerPage(),
      );
    },
    WebLoginPage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.WebLoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.GymFormPage]
class GymFormPage extends _i4.PageRouteInfo<void> {
  const GymFormPage({List<_i4.PageRouteInfo>? children})
      : super(
          GymFormPage.name,
          initialChildren: children,
        );

  static const String name = 'GymFormPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ScreenHandlerPage]
class RouteHandlerPage extends _i4.PageRouteInfo<void> {
  const RouteHandlerPage({List<_i4.PageRouteInfo>? children})
      : super(
          RouteHandlerPage.name,
          initialChildren: children,
        );

  static const String name = 'RouteHandlerPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.WebLoginPage]
class WebLoginPage extends _i4.PageRouteInfo<void> {
  const WebLoginPage({List<_i4.PageRouteInfo>? children})
      : super(
          WebLoginPage.name,
          initialChildren: children,
        );

  static const String name = 'WebLoginPage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
