import 'dart:ui';

mixin AppColors implements Color {

  static  Color primaryColor = hexToColor('#59C9D7');
  static  Color darkPrimaryColor = hexToColor('#3F51B5');
  static  Color lightPrimaryColor = hexToColor('#e2eff1');
  static  Color assentColor = hexToColor('#3F51B5');
  static  Color primaryText = hexToColor('#212121');
  static  Color secondaryText  = hexToColor('#757575');
  static  Color dividerColor  = hexToColor('#BDBDBD');
  static  Color whiteColor  = hexToColor('#FFFFFF');
  static Color headerBack = hexToColor('#d9edf7');
  static  Color iconColor  = hexToColor('#EB6BD7');
  static  Color moneyColor  = hexToColor('#2ed573');
  static Color get getPrimaryColor{
    return primaryColor;
  }
  static Color get getDarkPrimaryColor{
    return darkPrimaryColor;
  }
  static Color get getLightPrimaryColor{
    return lightPrimaryColor;
  }
  static Color get getAssentColor{
    return assentColor;
  }
  static Color get getPrimaryText{
    return primaryText;
  }
  static Color get getSecondaryText{
    return secondaryText;
  }
  static Color get getDividerColor{
    return dividerColor;
  }
  static Color get getWhiteColor{
    return whiteColor;
  }
  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
