import 'package:flutter/material.dart';
import '../../../config/routes/app_routes.dart';
import '../../../core/utils/assets_manger.dart';
import '../../../core/widget/custom_button.dart';
class Cogratulation  extends StatelessWidget {
  const Cogratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.homeScreen);
          },  icon: Icon(Icons.dangerous,color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Image.asset(ImageAssets.congrat)),
            Text('Congratulations',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 27),),
            SizedBox(
              height: 20,
            ),
            Text('Your order was placed ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            Text('successfully. For more details,',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            Text('check All My Orders page under Profile tab',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),maxLines: 2,),
            Spacer(),
            CustomButton(style: TextStyle(color: Colors.white,fontSize:22 ,fontWeight: FontWeight.bold,),width: 150,onPressed: (){},action: 'Don',)
          ],
        ),
      ),
    );
  }
}
