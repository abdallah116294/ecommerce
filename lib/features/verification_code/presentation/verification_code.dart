import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/utils/assets_manger.dart';
import '../../../core/widget/custom_button.dart';

class VerificationCode  extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  var OTPController=TextEditingController();
late  String otpcode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:const Text("Verification",style: TextStyle(color: Colors.black,fontSize: 20),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:const  Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(ImageAssets.check),
            const SizedBox(
              height: 35,
            ),
            const Text('Enter the 4 digit Code sent to your mobile number',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
           const SizedBox(
              height: 35,
            ),
            PinCodeTextField(
              length: 4,
              obscureText: false,
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              animationType: AnimationType.scale,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
                  activeColor: Colors.blue,
                inactiveColor: Colors.blue,
                inactiveFillColor: Colors.white,
                selectedColor: Colors.blue,
                selectedFillColor: Colors.white,
                borderWidth: 1
              ),
              animationDuration: const Duration(milliseconds: 300),
            //  backgroundColor: Colors.blue.shade50,
              enableActiveFill: true,
            //  errorAnimationController: errorController,
              controller: OTPController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
                setState(() {
                  otpcode = value;
                });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              }, appContext: context,
            ),
          const   SizedBox(
              height: 60,
            ),
            CustomButton(onPressed: (){},width: 300,action: 'Verify',style:const TextStyle(color: Colors.white,fontSize: 20),)

          ],
        ),
      ),
    );
  }
}
