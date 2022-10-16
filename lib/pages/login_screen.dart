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
            Text("Welcome Movie Lovers,"),
             Text("Login to book your seat,Yes its your seat"),


          ],
          )
      ),
    );
  }
}