import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simbi_health/ui/shared/colors.dart';

class SvgAssets {
  static final SvgData inbox = SvgData('assets/icons/inbox.svg');
  static final SvgData logout = SvgData('assets/icons/logout.svg');
  static final SvgData notification = SvgData('assets/icons/notification.svg');
  static final SvgData profile= SvgData('assets/icons/profile.svg');
  static final SvgData settings = SvgData('assets/icons/settings.svg');
  static final SvgData supportAgent= SvgData('assets/icons/support_agent.svg');
  static final SvgData users = SvgData('assets/icons/users.svg');
  
}

class SvgData {
  final String data;
  SvgData(this.data, {icon});
}

///Use SvgAsset.iconName to specify the svg icon
class SvgIcon extends StatelessWidget {
  final SvgData svgIcon;
  final Color? color;
  final double? size;

  const SvgIcon({
    Key? key,
    required this.svgIcon,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIcon.data,
      color: AppColors.yellowColor,
      height: size,
    );
  }
}