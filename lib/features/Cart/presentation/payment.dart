import 'package:flutter/material.dart';

import '../../../core/utils/assets_manger.dart';
import '../../../core/widget/Text_form_field.dart';
class Payments   extends StatelessWidget {
   Payments ({Key? key}) : super(key: key);
var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0,color:Color(0xff707070) ),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xffffffff)
                ),
                child: Image.asset(ImageAssets.pyppal),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color:Color(0xff707070) ),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xffffffff)
                ),
                child: Image.asset(ImageAssets.card,color: Colors.black,),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color:Color(0xff707070) ),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xffffffff)
                ),
                child: Image.asset(ImageAssets.sympol),
              ),

            ],
          ),
          SizedBox(height: 30,),
          CustomTextFormField(tile: 'Name of card',icon: Icons.credit_card,controller:controller ,obscureText: false,textInputType: TextInputType.text,),
          SizedBox(height: 30,),
          CustomTextFormField(tile: ' card Number',icon: Icons.credit_card,controller:controller ,obscureText: false,textInputType: TextInputType.text,),
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(controller:controller ,tile: 'Expiry Date',textInputType: TextInputType.datetime,obscureText: false,icon: Icons.countertops_rounded,),
              )),
              SizedBox(width: 10,),
              Expanded(child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(controller:controller ,tile: 'CVV',textInputType: TextInputType.number,obscureText: false,icon: Icons.countertops_rounded,),
              )),
            ],
          ),
          SizedBox(height: 30,),
          const ListTile(title: Text('Save the card details',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),leading: Icon(Icons.gpp_good_outlined,color: Colors.blue,),),
          SizedBox(height: 90,)


        ],
      ),
    );
  }
}
