import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/Customthemeextension.dart';
import '../utilities/colors.dart';

ThemeData lightttheme()
{
  final ThemeData base=ThemeData.light();
  return base.copyWith(
    extensions: [CustomThemeExtension.lightmode],
    scaffoldBackgroundColor: coolors.backgroundLight,
        backgroundColor: coolors.backgroundLight,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor:  Colors.transparent,
          backgroundColor: coolors.greenlight,
          foregroundColor: coolors.backgroundLight,
      splashFactory: NoSplash.splashFactory)
    ) ,
      bottomSheetTheme: const BottomSheetThemeData(

      backgroundColor: coolors.backgroundLight,
      modalBackgroundColor: coolors.backgroundLight,
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top:Radius.circular(20) )
      )
  )

  );
}