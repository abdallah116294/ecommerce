
import 'package:flutter/material.dart';


import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manger.dart';
import '../../../../core/widget/Text_form_field.dart';
import '../../../../core/widget/custom_button.dart';

class LoginScreen extends StatelessWidget  {
   LoginScreen({Key? key}) : super(key: key);
  var emailController=TextEditingController();
   var passwordController=TextEditingController();
   var formKey=GlobalKey<FormState>();
  Widget _loginWidget(BuildContext context)
  {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
           const  SizedBox(
              height:40
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(AppString.welcome,style: TextStyle(fontSize: 20,color: Colors.black),),
            ),
          const   SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomTextFormField(
                obscureText: false,
                controller: emailController,
                icon:Icons.phone,
                tile: 'Email',
                textInputType: TextInputType.phone,
              ),
            ),
           const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomTextFormField(
                obscureText: true,
                controller: passwordController,
                icon:Icons.lock,
                tile: 'Password',
                textInputType: TextInputType.visiblePassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {
                  Navigator.pushNamed(context,Routes.forgetPasswordScreen);
                }, child:const  Text('Forget Password?'),

                ),
              ),
            ),
           const SizedBox(
              height: 30,
            ),
            CustomButton(width: 300,action: 'login',style:const  TextStyle(fontSize: 30,color: Colors.white),onPressed: (){
              Navigator.pushNamed(context, Routes.homeScreen);
            }),
            const  SizedBox(
              height: 10,
            ),
          const  Text('Or',style: TextStyle(color: Colors.black,fontSize: 15),),
           const  SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.google))),
                const SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.facebook))),
                const SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.twitter))),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget _signUpWidget(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomTextFormField(
              obscureText: false,
              controller: emailController,
              icon:Icons.person,
              tile: 'Username',
              textInputType: TextInputType.name ,
            ),
          ),
          const  SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomTextFormField(
              obscureText: false,
              controller: emailController,
              icon:Icons.email,
              tile: 'Email',
              textInputType: TextInputType.emailAddress,
            ),
          ),
          const  SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomTextFormField(
              obscureText: false,
              controller: emailController,
              icon:Icons.phone,
              tile: 'Phone',
              textInputType: TextInputType.phone,
            ),
          ),

          const  SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomTextFormField(
              obscureText: true,
              controller: emailController,
              icon:Icons.lock,
              tile: 'password',
              textInputType: TextInputType.visiblePassword,
            ),
          ),

          const  SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: CustomTextFormField(
              obscureText: true,
              controller: emailController,
              icon:Icons.lock,
              tile: 'confirm password',
              textInputType: TextInputType.visiblePassword,
            ),
          ),

          const  SizedBox(
            height: 20,
          ),
          CustomButton(width: 300,action: 'Sign up',style:const  TextStyle(fontSize: 30,color: Colors.white),onPressed: (){
            Navigator.pushNamed(context, Routes.homeScreen);
          },),


        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
          elevation: 0.0,
          bottom:const TabBar(
            tabs: [
              Tab(
                child: Text(AppString.login,style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Tab(
                child: Text(AppString.signUp,style: TextStyle(color: Colors.black,fontSize: 20),),
              )
            ],
          ),
          backgroundColor: Colors.white,
          title: const Text(AppString.login),
        ),
        body:  TabBarView(
          children: [
            _loginWidget(context),
            _signUpWidget(context),
          ],
        ) ,
      ),
    );
  }

}

