import 'package:flutter/material.dart';
import 'package:porfolio_website/src/features/home/presentation/screens/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:porfolio_website/src/features/theme/logic/bloc/theme_state.dart';

import 'features/theme/data/theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio Web App',
            theme: state.isDarkMode ? darkTheme : lightTheme,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
