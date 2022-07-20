import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../Cart/presentation/my_cart_screen.dart';
import '../screen/home_screens2.dart';
import '../screen/more.dart';
import '../screen/profile.dart';
import '../screen/search.dart';
import '../states/states.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(InitialState());
  static HomeCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;
  List<Widget> screens =
  [
  const  HomeScreenDetails(),
   const Search(),
  const  MyCartScreen(),
  const  Profile(),
  const MoreScreen()
  ];
  List<String>titles=
      [
        'Home',
        'search',
        'cart',
        'profile',
        'more'
      ];
  void changeBottomNavBar(int index)
  {
    currentIndex=index;
    emit(ChangeBottomNavState());
  }


}
