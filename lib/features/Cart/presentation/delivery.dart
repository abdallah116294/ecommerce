import 'package:flutter/material.dart';
class DeliveryCheckout  extends StatefulWidget  {
  const DeliveryCheckout({Key? key}) : super(key: key);

  @override
  State<DeliveryCheckout> createState() => _DeliveryCheckoutState();
}

class _DeliveryCheckoutState extends State<DeliveryCheckout> {
  late   SingingCharacter? _character=SingingCharacter.two;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('Standard Delivery',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          ListTile(title: const Text('Order will be delivered between 3-5\nbusiness days',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
            trailing:  Radio<SingingCharacter>(value:SingingCharacter.one , groupValue: _character, onChanged: (SingingCharacter?value){
              setState((){
                _character=value;
              });
            }),
            ),
          const Text('business days',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w400),),
          const SizedBox(height: 20,),
          const Text('Next Day Delivery',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          ListTile(
            title:const Text('Place your order before 6pm and your items ',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13),) ,

            trailing:Radio<SingingCharacter>(value:SingingCharacter.two ,groupValue:_character,onChanged: (SingingCharacter?value){
              setState((){
                _character=value;
              });
            }, ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('will be delivered the next day',style: const TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w400),),
          const SizedBox(
            height: 20,
          ),
          const Text('Next Day Delivery',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(
            height: 20,
          ),
          ListTile(title:const Text('Pick a  particular date from the calendar',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),),
          trailing:  Radio<SingingCharacter>(groupValue: _character,value:SingingCharacter.three,onChanged:(SingingCharacter?value){
            setState((){
              _character=value;
            });
          } ),
          ),
          SizedBox(height: 90,)

        ],
      ),
    );
  }
}
enum SingingCharacter{one,two,three}