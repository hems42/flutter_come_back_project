class CoreImageConstants {
  static CoreImageConstants? _instace;

  static CoreImageConstants get instance => _instace ??= CoreImageConstants._init();

  CoreImageConstants._init();

  String get logo => toPng('veli');

  String get hotDog => toPng('hotdogs');
  String get projeIcon => toPng('cirlce_hwa');

  String toPng(String name) => 'asset/image/$name.png';
}