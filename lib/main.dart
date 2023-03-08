
import 'package:bases_web/locator.dart';
import 'package:bases_web/router/route_generator.dart';
import 'package:bases_web/router/router.dart';
import 'package:bases_web/services/navigators_services.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:flutter/material.dart';


void main() {  
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Rutas Appssss',
      home: const CounterPage(),
     /*  onGenerateRoute: RouteGenerator.generateRoute, */
     onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey, 
      builder: (_,child){
        return  MainLayoutPage(child: child ?? Container(),);
      }
    );
  }
}
