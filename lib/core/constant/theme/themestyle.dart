import 'package:flutter/material.dart';

class theme extends StatefulWidget {
  final bool isDark;
  final Function(bool) onSwichChanged;
 theme({required this.isDark ,required this.onSwichChanged});

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            
               mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Switch(value: widget.isDark,onChanged: widget.onSwichChanged,),
            ],
          ),
        ),
      
    );
  }
}

class AppTheme {
  static const _primaryColor = Colors.black;
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme(
      primary: _primaryColor,
      onPrimary: _primaryColor,
      secondary: Colors.grey,
      onSecondary: Colors.white,
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black
      )
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
      
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        
      )

    ),
  appBarTheme: AppBarTheme(
    backgroundColor:  Colors.white,
    foregroundColor: _primaryColor,
  )
  );

  
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor:  Color(0xff5E315D),
    colorScheme: ColorScheme(
      primary: Colors.white,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.white,
      brightness: Brightness.dark,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface:Colors.white,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white
      )
    ),
    cardTheme: CardThemeData(
      color:Color(0xff5E315D),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
      
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        
      )

    ),
      appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      toolbarTextStyle: TextStyle(color: Colors.white),
    backgroundColor:   Colors.white,
    foregroundColor: Colors.black,
  )
  
  );

}