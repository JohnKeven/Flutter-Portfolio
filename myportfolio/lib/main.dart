import 'package:flutter/material.dart';
import 'package:myportfolio/src/core/AppColors.dart';
import 'package:myportfolio/src/view/pages/Home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'John Keven - Portfólio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors().kPrimaryColorM)
              .copyWith(secondary: AppColors().kSecondColorM),
        ),
      builder: (context, widget) => ResponsiveBreakpoints.builder(
          child: widget!,
          breakpoints: const [
            Breakpoint(start: 0, end: 450, name: MOBILE),
            Breakpoint(start: 451, end: 800, name: TABLET),
            Breakpoint(start: 801, end: 1000, name: TABLET),
            Breakpoint(start: 1001, end: 1200, name: DESKTOP),
            Breakpoint(start: 1201, end: double.infinity, name: "4K"),
          ]),
      home: const Home(),
    ),
  );
}
