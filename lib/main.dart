import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:ud_project_04/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 12, 211, 39),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(155, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((value) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        // appBarTheme: AppBarTheme(
        //     backgroundColor: kDarkColorScheme.onPrimaryContainer,
        //     foregroundColor: kDarkColorScheme.primaryContainer),
        // cardTheme: const CardTheme().copyWith(
        //   color: kDarkColorScheme.secondaryContainer,
        //   margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        // ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //       backgroundColor: kDarkColorScheme.primaryContainer),
        // ),
        // textTheme: ThemeData().textTheme.copyWith(
        //       // bodyMedium: const TextStyle(color: Colors.black),
        //       titleLarge: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16,
        //           color: kDarkColorScheme.onSecondaryContainer),
        //     ),
      ),
      // themeMode: ThemeMode.system,
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              // bodyMedium: const TextStyle(color: Colors.black),
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: kColorScheme.onSecondaryContainer),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
//   );
// }
