import 'package:flutter/material.dart';
import 'package:flutter_project/register%20here.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showpassword=true;
  var EmailController= TextEditingController();
  var PasswordController= TextEditingController();
  var Email='', Password='';

  void togglepassword(){
    setState(() {
      showpassword=!showpassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BLOOD BANK'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Here',
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w900
              ),),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: EmailController,
                decoration: InputDecoration(
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: PasswordController,
                obscureText: showpassword,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      togglepassword();
                    },
                    child: Icon(showpassword?Icons.visibility:Icons.visibility_off),
                  ),
                    label: Text('Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text('Login'),
                    onPressed: () {
                  Email=EmailController.text;
                  Password=PasswordController.text;
                  if (Email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter your email")));
                  }else if(Password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Enter your password")));
                  }else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage(),));
                  }
                }),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New user?"),

            TextButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RegisterPage(),));

              }, child: Text('Signup')),
    ],
        ),
            ),
          ]),
    );
  }
}
