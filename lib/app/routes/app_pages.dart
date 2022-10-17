import 'package:get/get.dart';

import 'package:uts_prakmobile/app/modules/detail_user/bindings/detail_user_binding.dart';
import 'package:uts_prakmobile/app/modules/detail_user/views/detail_user_view.dart';
import 'package:uts_prakmobile/app/modules/home/bindings/home_binding.dart';
import 'package:uts_prakmobile/app/modules/home/views/home_view.dart';
import 'package:uts_prakmobile/app/modules/home/views/list_view.dart';
import 'package:uts_prakmobile/app/modules/login/bindings/login_binding.dart';
import 'package:uts_prakmobile/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LISTVIEW,
      page: () => ListUserView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_USER,
      page: () => DetailUserView(),
      binding: DetailUserBinding(),
    ),
  ];
}
