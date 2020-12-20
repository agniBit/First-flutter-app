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
      child: Column(
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          Text(
            'signup',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          Image.asset(
            "assets/kisspng-mehndi-designs-traditional-henna-body-art-tattoo-5bf276a343ef97.6899684415426167392783.png",
            height: size.height * .3,
          ),
          SizedBox(
            height: size.height * .05,
          ),
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
