import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    // this is done to fix the sieze of login creDentials window
    final Size _size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.amber,//Mytheme.splash;
      body: Container(
      
        height:_size.height ,
        width: _size.width,
        child:Column(
          children: [ const Padding (padding: EdgeInsets.all(20)),
            SvgPicture.asset("assets/icons/movie.svg",
       
            
            height: 80,width: 70,),
           const Padding(
             padding: EdgeInsets.only(top: 30),
             child: Text("Welcome Movie Lovers,",style: TextStyle(fontSize: 22,color:Colors.white ),),
           ),


            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Login to book your seat,Yes its your seat",
           style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.7)),),),


              const SizedBox(height: 20,),

           Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(19),
           )


          ],
          )
      ),
    );
  }
}