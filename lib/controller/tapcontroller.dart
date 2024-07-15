

import 'package:get/get.dart';
import 'package:gymwebapp/domains/usecase/usecasesimpl.dart';

import '../domains/usecase/domainusecases.dart';

class GetxTapController extends GetxController
    with GetSingleTickerProviderStateMixin{
  // final BuildContext context;

  // GetxTapController({required this.context});
  //table
  bool _isadminlogin = false;
  bool get isadminlogin => _isadminlogin;
  final AuthUseCases authusecase = AuthenticateUseCase();
  
  void loginpagehandler({required bool isadmin}) {
    _isadminlogin = isadmin;
    update();
  }
}
