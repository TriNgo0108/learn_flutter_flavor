enum Flavor {
  development,
  staging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Development Flavor';
      case Flavor.staging:
        return 'Staging App';
      case Flavor.production:
        return 'Production App';
      default:
        return 'title';
    }
  }

}
