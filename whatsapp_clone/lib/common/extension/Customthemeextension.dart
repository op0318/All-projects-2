import 'package:flutter/material.dart';
import '../theme/dark_theme.dart';
import 'package:whatsapp_clone/common/utilities/colors.dart';

extension ExtendedTheme  on BuildContext
{
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
   }
   class CustomThemeExtension extends ThemeExtension<CustomThemeExtension >
{

   static const lightmode=CustomThemeExtension(
     circleImageColor: Color(0xFF25D366),
     greycolor: coolors.greylight,
     blueColor: coolors.bluelight,
     langBtnColor: Color(0xFFF7F8FA),
     langBtnHighlightColor:  Color(0xFFE8E8ED),
   );
   static const  darkmode=CustomThemeExtension(
       circleImageColor:coolors.greenDark,
       greycolor: coolors.greyDark,
       blueColor: coolors.blueDark,
       langBtnColor: Color(0xFFF7F8FA),
  langBtnHighlightColor: Color(0xFF09141A));







  final Color? circleImageColor;
  final Color? greycolor;
  final Color? blueColor;
  final Color? langBtnColor;
  final Color? langBtnHighlightColor;


 const  CustomThemeExtension({
    this.circleImageColor,
    this.greycolor,
    this.blueColor,
    this.langBtnColor,
    this.langBtnHighlightColor});
 @override
  ThemeExtension<CustomThemeExtension> copyWith(
   {Color? circleImageColor,
      Color? greycolor,
      Color? bluecolor,
      Color? langBtnColor,
      Color? langBtnHighlightColor})
   {
    return CustomThemeExtension(
      circleImageColor: circleImageColor??this.circleImageColor,
         greycolor: greycolor??this.greycolor,
      blueColor: blueColor??this.blueColor,
      langBtnColor: langBtnColor??this.langBtnColor,
      langBtnHighlightColor: langBtnHighlightColor??langBtnHighlightColor

    );

    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(covariant ThemeExtension<CustomThemeExtension>? other, double t) {
   if(other is! CustomThemeExtension) return this;
   return CustomThemeExtension(
     circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
       greycolor: Color.lerp(greycolor, other.greycolor, t),
     blueColor: Color.lerp(blueColor, other.blueColor, t),
   langBtnColor: Color.lerp(langBtnColor, other.langBtnColor, t),
       langBtnHighlightColor: Color.lerp(langBtnHighlightColor, langBtnHighlightColor, t)

   );
  }

}
  



