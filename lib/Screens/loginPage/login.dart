import 'package:flutter/material.dart';
import 'components/body.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      body: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/transparent-wedding-icon-bouquet-icon-5fc31666599653.040194881606620774367.png",
                    width: size.width * 0.2,
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/transparent-tools-and-utensils-icon-hand-drawn-love-elements-i-5fc3526651f4e4.0782282216066361343357.png",
                    width: size.width * 0.3,
                  )),
              Body()
            ],
          )),
    );
  }
}
