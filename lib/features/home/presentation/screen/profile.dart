import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class Profile extends  StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: CircleAvatar(radius: 45,child: Image.network(width: 87,height: 90,'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/289931748_3238108543129765_7827806816581937684_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=BT3XW2m71UQAX865lMS&_nc_ht=scontent.fcai20-3.fna&oh=00_AT-y37xkhfWcjEiY___7URCBtkS0dv4JTm__4ovRy7Zhnw&oe=62D8D9AF')),
                  )
                ],
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Abdallah',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Text('Abdo@gmail.com',style: TextStyle(color: Colors.grey[500],fontSize: 17,fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  TextButton(onPressed: (){}, child: Text('Edit Profile'))

                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(title: Text('Home'),leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.homeScreen) ;
          },icon: Icon(Icons.home_outlined),color: Colors.black,),),
          ListTile(title: Text('Message'),leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.messageScreen);
          },icon: Icon(Icons.message_outlined),color: Colors.black),),
          ListTile(title: Text('Categories'),leading: IconButton(onPressed: (){},icon: Icon(Icons.menu_book_rounded),color: Colors.black),),
          ListTile(title: Text('My orders'),leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.myCartScreen);
          },icon: Icon(Icons.shopping_cart_outlined),color: Colors.black),),
          ListTile(title: Text('Notifications'),leading: IconButton(onPressed: (){},icon: Icon(Icons.notifications_active_rounded),color: Colors.black),),
          ListTile(title: Text('Log out'),leading: IconButton(onPressed: (){},icon: Icon(Icons.logout),color: Colors.black),)


        ],
      ),
    );
  }
}
