/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/avatars
  $AssetsImagesAvatarsGen get avatars => const $AssetsImagesAvatarsGen();

  /// Directory path: assets/images/backgrounds
  $AssetsImagesBackgroundsGen get backgrounds =>
      const $AssetsImagesBackgroundsGen();

  /// Directory path: assets/images/dictionary
  $AssetsImagesDictionaryGen get dictionary =>
      const $AssetsImagesDictionaryGen();
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// Directory path: assets/svgs/appIcons
  $AssetsSvgsAppIconsGen get appIcons => const $AssetsSvgsAppIconsGen();
}

class $AssetsImagesAvatarsGen {
  const $AssetsImagesAvatarsGen();

  /// File path: assets/images/avatars/avatar1.png
  AssetGenImage get avatar1 =>
      const AssetGenImage('assets/images/avatars/avatar1.png',
          size: Size(213.0, 159.0));

  /// List of all assets
  List<AssetGenImage> get values => [avatar1];
}

class $AssetsImagesBackgroundsGen {
  const $AssetsImagesBackgroundsGen();

  /// File path: assets/images/backgrounds/darkMainDictBg.png
  AssetGenImage get darkMainDictBg =>
      const AssetGenImage('assets/images/backgrounds/darkMainDictBg.png',
          size: Size(1168.0, 763.0));

  /// File path: assets/images/backgrounds/darkUpperBg.png
  AssetGenImage get darkUpperBg =>
      const AssetGenImage('assets/images/backgrounds/darkUpperBg.png',
          size: Size(1074.0, 109.0));

  /// List of all assets
  List<AssetGenImage> get values => [darkMainDictBg, darkUpperBg];
}

class $AssetsImagesDictionaryGen {
  const $AssetsImagesDictionaryGen();

  /// File path: assets/images/dictionary/cardHover.png
  AssetGenImage get cardHover =>
      const AssetGenImage('assets/images/dictionary/cardHover.png',
          size: Size(452.0, 195.0));

  /// List of all assets
  List<AssetGenImage> get values => [cardHover];
}

class $AssetsSvgsAppIconsGen {
  const $AssetsSvgsAppIconsGen();

  /// File path: assets/svgs/appIcons/appIcon.svg
  SvgGenImage get appIcon =>
      const SvgGenImage('assets/svgs/appIcons/appIcon.svg',
          size: Size(32.0, 32.0));

  /// List of all assets
  List<SvgGenImage> get values => [appIcon];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
