import 'package:flutter/material.dart';
import 'package:login_app/const.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.size,
    @required this.hintText,
    @required this.icon,
  }) : super(key: key);

  final Size size;
  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    ValueChanged<String> fName;
    bool isPass = false;
    if (hintText == 'Password') {
      isPass = true;
    }
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: size.width * .8,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: primarycolorlight,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: isPass,
        onChanged: fName,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ValueChanged<String> name, username, email, password;
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Register User",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15,),
          InputTextField(
            size: size,
            hintText: 'Name',
            icon: Icon(
              Icons.person,
              color: primarycolor,
            ),
          ),
          InputTextField(
            size: size,
            hintText: 'Email',
            icon: Icon(
              Icons.email,
              color: primarycolor,
            ),
          ),
          InputTextField(
            size: size,
            hintText: 'Username',
            icon: Icon(
              Icons.person,
              color: primarycolor,
            ),
          ),
          InputTextField(
            size: size,
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: primarycolor,
            ),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.only(top: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  color: primarycolor,
                  onPressed: () {
                  },
                  child: Text(
                    'Regsiter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
