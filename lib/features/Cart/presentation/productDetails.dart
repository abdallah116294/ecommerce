import 'package:flutter/material.dart';


import '../../../config/routes/app_routes.dart';
import '../../../core/utils/assets_manger.dart';
import '../../../core/widget/custom_button.dart';

class FinalProductDetails  extends  StatelessWidget {
  const FinalProductDetails ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Checkout',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ExpansionTile(
            trailing: IconButton(icon:const Icon(Icons.arrow_forward_ios) ,onPressed: (){}),
            title: const Text('Shopin Address'),children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Abdallah mohamed'),
                const Text('No 123 ,sub,Street,'),
                const Text('Main Street'),
                TextButton(onPressed: (){}, child: const Text('Change')),
              ],
            )
          ],),
          const SizedBox(
            height: 30,
          ),
          ExpansionTile(
            trailing: IconButton(icon:const Icon(Icons.arrow_forward_ios) ,onPressed: (){}),
            title: const Text('Payment Method'),children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(' Master Card ending **00'),
                TextButton(onPressed: (){}, child: const Text('Change')),
              ],
            )
          ],),
          const SizedBox(
            height: 30,
          ),
          const Align(alignment:Alignment.centerLeft,child: Text('Items',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),)),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 337,
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular( 15),
              color: const Color(0xffDDDDDD),
            ),
            child: Row(
              children: [
                Image.asset(ImageAssets.nike,),
                const Spacer(flex: 1,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('nike',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    const Text('\$99.99',style: const TextStyle(color: Color(0xff2196F3),fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  color: Colors.white,
                  height: 46,
                  width: 87,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('\-',style: TextStyle(fontSize: 35),) ,
                      const SizedBox(width: 10,),
                      const Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff2196F3)),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.add))

                    ],
                  ),
                ),
                const Spacer(flex: 1,)
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.lightBlueAccent,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('\$199.99',style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                      const Text('Free Shoping',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold))

                    ],
                  ),
                ),
                const Spacer(),
                CustomButton(style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),onPressed: (){
                  Navigator.pushNamed(context, Routes.cogratulation);

                },action: 'Place Order',width: 150,),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
