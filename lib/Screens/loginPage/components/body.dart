import 'package:flutter/material.dart';
import 'package:login_app/Screens/loginPage/components/textinputfield.dart';
import 'package:login_app/const.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ValueChanged<String> email;
    ValueChanged<String> password;
    return Container(
      alignment: Alignment.center,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'signup',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: size.height*.3,),
          Textinputfiel(
            child: TextField(
              onChanged: email,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: primarycolor,
                ),
                hintText: "Email",
                border: InputBorder.none,
              ),
            ),
          ),
          // SizedBox(height: size.height*.05,),
          Textinputfiel(
            child: TextField(
              obscureText: true,
              onChanged: password,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: primarycolor,
                ),
                suffixIcon: Icon(Icons.visibility),
                hintText: "Password",
                border: InputBorder.none,
              ),
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
                    'Signin',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
