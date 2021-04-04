import 'package:flutter/cupertino.dart';
import 'package:onboarding_app/Models/OnBoardingInfo.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnBoardingController extends GetxController{
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length-1;
  var pageController = PageController();

  forwardAction(){
    if(isLastPage){
      //Go To Home Page
    }else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/order.png', 'Ordene su comida',
        'Ahora puedes pedir comida en cualquier momento desde tu móvil.'),
    OnboardingInfo('assets/cook.png', 'Cocinar alimentos seguros',
        'Mantenemos la seguridad y nos mantenemos limpios mientras hacemos la comida.'),
    OnboardingInfo('assets/deliver.png', 'Entrega rápida',
        'Los pedidos de sus comidas favoritas se entregarán de inmediato.'),
    OnboardingInfo('assets/cuba.png', 'Hecho en Cuba',
        'Aprendiendo un poco de este lenguaje de programación que promete.')
  ];
}