import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:desafioma9/app/modules/home/home_controller.dart';
import 'package:desafioma9/app/modules/home/home_module.dart';

import '../../../../lib/app/modules/home/data/model/movie_item.dart';

void main() {
  initModule(HomeModule());
  // HomeController home;
  //
  setUp(() {
    //     home = HomeModule.to.get<HomeController>();
  });

  group('HomeController Test', () {
      testWidgets("First Test", (WidgetTester tester) async {
         await tester.pumpWidget(ModularApp());
      });

    //   test("Set Value", () {
    //     expect(home.value, equals(0));
    //     home.increment();
    //     expect(home.value, equals(1));
    //   });
  });
}
