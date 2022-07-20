
import 'package:ecommerce/features/Cart/presentation/payment.dart';
import 'package:flutter/material.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/widget/custom_button.dart';
import 'address.dart';
import 'delivery.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int currentStep=0;
  int activeStep=0;
  int dotCount=5;
  Row steps() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(dotCount, (index) {
        return ElevatedButton(
          child: Text('${index + 1}'),
          onPressed: () {
            setState(() {
              activeStep = index;
            });
          },
        );
      }),
    );
  }
  Widget nextButton(){
    return CustomButton(
      width: 100,
      action: 'Next',
      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
      onPressed: (){
        final lastStep=currentStep==getStep().length-1;
        if(lastStep)
        {
          Navigator.pushNamed(context, Routes.finalProductDetails);
        }else{
          setState((){
            currentStep+=1;
          });
        }
      },
    );
  }
  Widget backButton(){
    return ElevatedButton(onHover: (value) => BoxShadow(
      spreadRadius: 12.0
    ),style: ElevatedButton.styleFrom(primary: Color(0xffFFFFFF )),onPressed: (){
      currentStep==0?null:setState((){currentStep-=1;});
    }, child: Text('back',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),));
  }
  List<Step> getStep()
  {
    return [
       Step(isActive:currentStep>=0 ,title: Text('Delivery',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),), content:const DeliveryCheckout()),
      Step(isActive: currentStep>=1,title: Text('Address',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),), content:AddressScreen()),
      Step(isActive:currentStep>=2,title: Text('Payments',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),), content:  Payments())


    ];
  }
  void lastItem()
  {
    final lastStep=currentStep==getStep().length-1;
    if(lastStep)
    {
      Navigator.pushNamed(context, Routes.finalProductDetails);
    }else{
      setState((){
        currentStep+=1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Checkout',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),color:Colors.black ,),

      ),
      body: Stepper(

        type:StepperType.horizontal ,

        steps: getStep(),
        currentStep: currentStep,
        onStepContinue:(){
          final lastStep=currentStep==getStep().length-1;
          if(lastStep)
            {

            }else
              {
                setState(()=>currentStep+=1);
              }

        } ,
        onStepCancel: (){

         currentStep==0?null: setState(()=>currentStep-=1);
        },
        elevation: 0.0,
        controlsBuilder: (context,_) {
          return Row(
            children: <Widget>[
              // TextButton(
              //   onPressed: (){},
              //   child: const Text('NEXT'),
              // ),
              // TextButton(
              //   onPressed: (){},
              //   child: const Text('cancel'),
              // ),
              backButton(),
              Spacer(flex: 1,),
              nextButton(),

            ],
          );
        },

      ),
    );

  }
}
