import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/Cart/presentation/checkout.dart';
import '../../features/Cart/presentation/congratulation.dart';
import '../../features/Cart/presentation/my_cart_screen.dart';
import '../../features/Cart/presentation/productDetails.dart';
import '../../features/forgetpassword/presentation/forgetpassword_screen.dart';
import '../../features/home/presentation/cubit/cubit.dart';
import '../../features/home/presentation/screen/details_screen.dart';
import '../../features/home/presentation/screen/home_screen_layout.dart';
import '../../features/home/presentation/screen/message.dart';
import '../../features/home/presentation/screen/profile.dart';
import '../../features/home/presentation/screen/search.dart';
import '../../features/login/persentation/screen/login_siginup.dart';
import '../../features/splash/presentation/screens/splash.dart';
import '../../features/verification_code/presentation/verification_code.dart';

class Routes{
  static const String initialRoute='/';
 static const  String loginScreen='LoginScreen';
 static const String forgetPasswordScreen='ForgetPasswordScreen';
 static const String homeScreen='HomeScreen';
 static const  String verificationCode='VerificationCode';
 static const String productDetailsScreen='ProductDetailsScreen';
 static const String myCartScreen='MyCartScreen';
 static const String checkoutScreen='CheckoutScreen';
 static const String finalProductDetails='FinalProductDetails';
 static const String cogratulation='Cogratulation';
 static const String messageScreen='MessageScreen';
 static const String profile='Profile';
 static const String search='Search';
}
class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings)
  {
    switch(routeSettings.name)
    {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context){
          return const SplashScreen();
        });
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context){
          return  LoginScreen();
        });
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (context)
        {
          return  ForgetPasswordScreen();
        });
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context){
          return   BlocProvider(create: (context)=>HomeCubit(),child: HomeScreenLayout());
         });
      case Routes.verificationCode:
        return MaterialPageRoute(builder: (context)
        {
          return const  VerificationCode();
        });
      case Routes.productDetailsScreen:
        return MaterialPageRoute(builder: (context){
          return   ProductDetailsScreen();
        });
      case  Routes.myCartScreen:
        return MaterialPageRoute(builder: (context){
          return const  MyCartScreen();
        }) ;
      case Routes.checkoutScreen:
        return MaterialPageRoute(builder: (context){
          return const  CheckoutScreen();
        });
      case Routes.finalProductDetails:
        return MaterialPageRoute(builder: (context){
          return  const FinalProductDetails();
        });
      case Routes.cogratulation:
        return MaterialPageRoute(builder: (context)
        {
          return const  Cogratulation();
        });
      case Routes.messageScreen:
        return MaterialPageRoute(builder: (context){
          return const MessageScreen();
        });
      case Routes.profile:
        return MaterialPageRoute(builder: (context){
          return const  Profile();
        });
      case Routes.search:
        return MaterialPageRoute(builder: (context)
        {
          return Search();
        }) ;

     }
  }
}
