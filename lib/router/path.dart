enum RouteType {
  home,
  group,
  private,
  settings,
  error,
}

class MiluqRoutePath {
  final int id;
  final RouteType type;

  String get key {
    return '$type:$id';
  }

  const MiluqRoutePath.home()
      : id = 0,
        type = RouteType.home;

  MiluqRoutePath.page({required this.id, required this.type});

  MiluqRoutePath.single({required this.type}) : id = 0;

  MiluqRoutePath.unknown()
      : id = 0,
        type = RouteType.error;
}
