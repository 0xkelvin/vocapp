import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/utils/layout_utils.dart';
import 'logger_service.dart';

class LayoutService {
  LayoutService._();
  static final LayoutService _instance = LayoutService._();
  factory LayoutService() => _instance;

  DeviceScreenType _screenType = DeviceScreenType.sm;
  DeviceScreenType get screenType => _screenType;
  void setScreenType(DeviceScreenType type) {
    LoggerService().info(
      '$type',
      type: 'ScreenType',
    );

    _screenType = type;
  }

  DeviceScreenType getScreenType(double screenWidth) {
    if (screenWidth > DeviceScreenType.xxxxl.breakpoint) {
      return DeviceScreenType.xxxxl;
    } else if (screenWidth > DeviceScreenType.xxxl.breakpoint) {
      return DeviceScreenType.xxxl;
    } else if (screenWidth > DeviceScreenType.xxl.breakpoint) {
      return DeviceScreenType.xxl;
    } else if (screenWidth > DeviceScreenType.xl.breakpoint) {
      return DeviceScreenType.xl;
    } else if (screenWidth > DeviceScreenType.lg.breakpoint) {
      return DeviceScreenType.lg;
    } else if (screenWidth > DeviceScreenType.md.breakpoint) {
      return DeviceScreenType.md;
    } else {
      return DeviceScreenType.sm;
    }
  }

  double sizer({
    /// Size in sm. fallback to 0 if null
    double? sm,

    /// Size in md. fallback to sm if null
    double? md,

    /// Size in lg. fallback to md if null
    double? lg,

    /// Size in xl. fallback to lg if null
    double? xl,

    /// Size in xxl. fallback to xl if null
    double? xxl,

    /// Size in xxxl. fallback to xl if null
    double? xxxl,

    /// Size in xxxxl. fallback to xl if null
    double? xxxxl,

    /// Set if integer or not. Default data type is double
    bool returnAsInteger = false,

    /// Implement screenUtil on mobile. Default is true.
    bool useScreenUtil = true,
  }) {
    final fallback = xxxxl ?? xxxl ?? xxl ?? xl ?? lg ?? md ?? sm ?? 0;

    var size = switch (_screenType) {
      DeviceScreenType.sm => sm ?? fallback,
      DeviceScreenType.md => md ?? fallback,
      DeviceScreenType.lg => lg ?? fallback,
      DeviceScreenType.xl => xl ?? fallback,
      DeviceScreenType.xxl => xxl ?? fallback,
      DeviceScreenType.xxxl => xxxl ?? fallback,
      DeviceScreenType.xxxxl => xxxxl ?? fallback,
    };

    if (useScreenUtil) size = size.h;
    if (returnAsInteger) size.toInt();

    return size;
  }

  /// Sizer but allow null value.
  double? nullableSizer({
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? xxl,
    double? xxxl,
    double? xxxxl,

    /// Set if integer or not. Default data type is double
    bool returnAsInteger = false,

    /// Implement screenUtil on mobile. Default is true.
    bool useScreenUtil = true,
  }) {
    var size = switch (_screenType) {
      DeviceScreenType.sm => sm,
      DeviceScreenType.md => md,
      DeviceScreenType.lg => lg,
      DeviceScreenType.xl => xl,
      DeviceScreenType.xxl => xxl,
      DeviceScreenType.xxxl => xxxl,
      DeviceScreenType.xxxxl => xxxxl,
    };

    if (size == null) return null;

    if (useScreenUtil) size = size.h;
    if (returnAsInteger) size.toInt();
    return size;
  }
}
