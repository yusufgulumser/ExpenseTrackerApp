import 'package:flutter/material.dart';
import 'package:third_app/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(200, 120, 50, 95),
);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onSurfaceVariant,
          foregroundColor: kColorScheme.onTertiary,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.onInverseSurface,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.onInverseSurface),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                color: kColorScheme.onSurface,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
