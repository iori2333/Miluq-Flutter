import 'package:flutter/cupertino.dart';
import 'package:miluq/router/path.dart';

class MiluqRouteParser extends RouteInformationParser<MiluqRoutePath> {
  static final _instance = MiluqRouteParser();

  static get instance => _instance;

  @override
  parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');
    if (uri.pathSegments.isEmpty) {
      return const MiluqRoutePath.home();
    }

    if (uri.pathSegments.length == 1) {
      final category = uri.pathSegments[0];
      if (category != 'settings') {
        return MiluqRoutePath.unknown();
      }
      return MiluqRoutePath.single(type: RouteType.settings);
    }

    if (uri.pathSegments.length == 2) {
      final category = uri.pathSegments[0];
      final id = int.tryParse(uri.pathSegments[1]);
      if (id == null || id == 0) {
        return MiluqRoutePath.unknown();
      }

      switch (category) {
        case 'group':
          return MiluqRoutePath.page(id: id, type: RouteType.group);
        case 'private':
          return MiluqRoutePath.page(id: id, type: RouteType.private);

        default:
          return MiluqRoutePath.unknown();
      }
    }

    return MiluqRoutePath.unknown();
  }

  @override
  RouteInformation? restoreRouteInformation(MiluqRoutePath configuration) {
    switch (configuration.type) {
      case RouteType.home:
        return const RouteInformation(location: '/');
      case RouteType.group:
        return RouteInformation(location: '/group/${configuration.id}');
      case RouteType.private:
        return RouteInformation(location: '/private/${configuration.id}');
      case RouteType.settings:
        return const RouteInformation(location: '/settings');
      case RouteType.error:
        return const RouteInformation(location: '/error');
    }
  }
}
