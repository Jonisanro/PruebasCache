

import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

import '../ui/views/counter_provider_view.dart';

class Flurorouter {

  static final FluroRouter  router = FluroRouter();

  static void configureRoutes(){
    router.define('/', handler: _counterHandler,
    transitionType: TransitionType.fadeIn);
     router.define('/stateful', handler:_counterHandler ,
     transitionType: TransitionType.fadeIn);
     router.define('/provider', handler: _counterProviderHandler,
     transitionType: TransitionType.fadeIn);
     

  } 


  static final Handler _counterHandler = Handler(
    handlerFunc: (context, params) =>const CounterView()
  );

  

  static final Handler _counterProviderHandler = Handler(
    handlerFunc: (context, params) =>const CounterProviderView()
  );

  
}