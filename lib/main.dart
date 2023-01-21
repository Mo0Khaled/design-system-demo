import 'package:design_system_demo/core/theme/colors.dart';
import 'package:design_system_demo/core/theme/typography/body_large_style.dart';
import 'package:flutter/material.dart';
final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Design System Demo',
      theme: ThemeData.light().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          CustomColors.light,
          BodyLargeStyle.light
        ],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: <ThemeExtension<dynamic>>[
          CustomColors.dark,
          BodyLargeStyle.light
        ],
      ),
      // themeMode: ThemeMode.light,

      // theme:
      home: Other(),
    );
  }
}

class Other extends StatelessWidget {
  const Other({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>()!;
    final x = Theme.of(context).extension<BodyLargeStyle>()!;

    return Scaffold(
      body: Center(
        child: Text(
          "Design System",
          style: TextStyle(
            color: theme.color,
            fontSize: x.fontSize,
            fontWeight: x.fontWeight
          )
        ),
      ),
    );
  }
}
