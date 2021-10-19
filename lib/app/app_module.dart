import 'package:desafioma9/app/modules/splash/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafioma9/app/modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => SplashScreen()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
