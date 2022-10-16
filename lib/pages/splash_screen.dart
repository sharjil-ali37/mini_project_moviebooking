import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project_moviebooking/utils/mytheme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

// function of animation
late AnimationController _animationController;
late Animation<double>_animation;

@override

/* initState() is a method of class State and it is considered as an important lifecycle method in Flutter. initState() is called the only once and we use it for one-time initializations.

Example:

To initialize data that depends on the specific BuildContext.
To initialize data that need to execute before build()*/
void initState(){
  _animationController = AnimationController (vsync: this,duration: const Duration(milliseconds:1200 ) );
  _animation = 
  CurvedAnimation(parent: _animationController,curve:Curves.bounceOut,reverseCurve:Curves.bounceInOut );
  _animationController.forward(); 
  super.initState();


@override
//  this to end the transition of animation
void dispose(){
  _animationController.dispose();
  super.dispose();

}
}


  @override
  Widget build(BuildContext context) {
    // this one to remove Dark reD color band from top
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor:MyTheme.splash    ,
      body: Container
      (child: Center(
          child:ScaleTransition(scale:_animation,
        
        child: SvgPicture.asset("assets/icons/movie.svg",
        height: 100, width:90,
        ),
      ),
      ),
      ),
    );
  }
}