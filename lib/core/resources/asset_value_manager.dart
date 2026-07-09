// abstract class Assets {
//   Assets._();
//   static const images = _Images();
//   static const fonts = _Fonts();
// }

// class _Images {
//   const _Images();
//   String get onboarding => 'assets/images/onboarding.png';
// }

// class _Fonts {
//   const _Fonts();
//   String get sfProDisplay => 'SF Pro Display';
// }

// not working but I wanna save it for later.

abstract class Assets {
  // private constructor to disable instantiation and also prevent
  // every class from extending or implemeting this Abstact class.
  Assets._();

  static const images = ImagesNamespace(null); // pointer to extension type
  static const fonts = FontsNamespace(null);
}

// Extension Type
// for more info : https://dart.dev/language/extension-types
extension type const ImagesNamespace(Null _) {
  String get onboarding => 'assets/images/onboarding.png';
}

extension type const FontsNamespace(Null _) {
  String get sfProDisplay => 'SF Pro Display';
}

// for more info or explain how this works :
// https://share.google/aimode/QQ4iOSUTB39rljnDg
