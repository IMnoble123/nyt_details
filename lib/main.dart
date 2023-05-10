import 'package:flutter/material.dart';
import 'package:nyt_details/modules/most_popular/controller/mostview_controller.dart';
import 'package:nyt_details/modules/most_popular/most_viewed_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>MostViewedController())
      ],
      child: MaterialApp(
        title: 'NYC Most Popular',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MostViewedScreen(),
      ),
    );
  }
}

