enum Flavor {
  prod,
  staging,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Soft Tech Test';
      case Flavor.staging:
        return 'Soft Tech Test Staging';
      default:
        return 'title';
    }
  }
}
