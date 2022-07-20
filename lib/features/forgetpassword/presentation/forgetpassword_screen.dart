import 'package:ecommerce/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/widget/Text_form_field.dart';
import '../../../core/widget/custom_button.dart';

class ForgetPasswordScreen extends StatelessWidget  {
   ForgetPasswordScreen({Key? key}) : super(key: key);
var phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Forget Password',style: TextStyle(color: Colors.black,fontSize: 20),),
          leading:  IconButton(onPressed: (){
            Navigator.pop(context);
          },icon:const Icon(Icons.arrow_back_ios),color: Colors.black,),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(

              children: [
                Image.asset(ImageAssets.forgetPass),
                const SizedBox(
                  height: 20,
                ),
                const Text('Enter your registered phone number to Log In',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w900),),
                const SizedBox(
                  height: 40,
                ),
                CustomTextFormField(icon:Icons.phone,obscureText: false,controller:phoneController ,textInputType: TextInputType.phone,tile:'Phone', ),
                const SizedBox(height: 40,),
                CustomButton(width: 300,action: 'send',style:const  TextStyle(fontSize: 30,color: Colors.white),onPressed: (){
                  Navigator.pushNamed(context,Routes.verificationCode);
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
