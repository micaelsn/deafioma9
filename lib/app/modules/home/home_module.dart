import 'package:desafioma9/app/shared/dio/client_dio.dart';
import 'package:desafioma9/app/shared/utils/constants.dart';
import 'package:dio/dio.dart';

import 'data/data_source/data_source.dart';
import 'data/repositories/get_list_movies_repository_impl.dart';
import 'domain/usecase/get_list_movies_usecase.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        $HomeController,
        Bind((i) => GetListMoviesUseCaseImpl(i.get())),
        Bind((i) => GetListMoviesRepositoryImpl(i.get())),
        Bind((i) => GetListMoviesDataSourceStandart(i.get())),
        Bind((i) => ClientDioApi(Dio(), ApiConstants.BASE_URL)),
      ];

  @override
  List<ModularRoute> get routers => [
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
