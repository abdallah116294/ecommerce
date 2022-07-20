import 'package:flutter/material.dart';

import '../../../core/widget/Text_form_field.dart';

class AddressScreen  extends StatelessWidget {
   AddressScreen({Key? key}) : super(key: key);
var streetoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  [

          const ListTile(title: Text('Billing address in the same as delivery address',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),),leading: Icon(Icons.gpp_good_outlined,color: Colors.blue,),),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(controller:streetoneController ,tile: 'Street1',textInputType: TextInputType.text,obscureText: false,icon: Icons.bubble_chart,),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(controller:streetoneController ,tile: 'Street2',textInputType: TextInputType.text,obscureText: false,icon: Icons.bubble_chart),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(controller:streetoneController ,tile: 'City',textInputType: TextInputType.text,obscureText: false,icon: Icons.bubble_chart),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(controller:streetoneController ,tile: 'state',textInputType: TextInputType.text,obscureText: false,icon: Icons.countertops_rounded,),
              )),
              SizedBox(width: 10,),
              Expanded(child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormField(controller:streetoneController ,tile: 'country',textInputType: TextInputType.text,obscureText: false,icon: Icons.countertops_rounded,),
              )),
            ],
          ),
           SizedBox(height: 90,)


        ],
      ),
    );
  }
}
