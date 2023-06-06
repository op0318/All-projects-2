import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/Customthemeextension.dart';
import '../utilities/colors.dart';
import '';
ThemeData darktheme()
{
  final ThemeData base=ThemeData.dark();
  return base.copyWith(
    extensions: [
      CustomThemeExtension.darkmode
    ] ,
    scaffoldBackgroundColor: coolors.backgroundDark,
      backgroundColor: coolors.backgroundDark,
    elevatedButtonTheme: ElevatedButtonThemeData(style:ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor:  Colors.transparent,
        splashFactory: NoSplash.splashFactory,

        backgroundColor: Color(0xFF00A884),
        foregroundColor: Color(0xFF111B21)
    ) ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: coolors.greybackground,
      modalBackgroundColor: coolors.greybackground,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top:Radius.circular(20) )
      )
    )

  );
}