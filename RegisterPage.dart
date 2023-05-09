import 'package:flutter/material.dart';

import 'home.dart';
import 'loginpage.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {




  bool checkValue=false;
  bool showpassword=true;
  bool showconfirmpassword=true;
  var Firstnamecontroller=TextEditingController();
  var Lastnamecontroller=TextEditingController();
  var Emailcontroller=TextEditingController();
  var Passwordcontroller=TextEditingController();
  var ConfirmPasswordcontroller=TextEditingController();

  var Firstname='',Lastname='',Email='',Password='',ConfirmPassword='';

  void togglepassword(){
    setState(() {
     showpassword=!showpassword;
    });
    void toggleconfirmpassword(){
      setState(() {
        showconfirmpassword=!showconfirmpassword;
      });
    }
  }
  void toggleconfirmpassword(){
    setState(() {
      showconfirmpassword=!showconfirmpassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                      "Hey there,",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                      "Create an Account",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: Firstnamecontroller,
                  decoration: InputDecoration(
                    label: Text('First name'),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: Lastnamecontroller,
                  decoration: InputDecoration(
                    label: Text('Last name'),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: Emailcontroller,
                  decoration: InputDecoration(
                    label: Text('Email'),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: Passwordcontroller,
                  obscureText: showpassword,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
    onTap: () {
      togglepassword();
    },child: Icon(showpassword?Icons.visibility:Icons.visibility_off),
    ),
    label: Text('Password'),
                    border: OutlineInputBorder()
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: ConfirmPasswordcontroller,
                  obscureText: showconfirmpassword,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        toggleconfirmpassword();
                      },
                      child: Icon(showconfirmpassword?Icons.visibility:Icons.visibility_off),
                    ),
                    label: Text('Confirm Password'),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value: checkValue,
                      onChanged: (value) {
                        setState(() {
                          checkValue=!checkValue;
                        });
                      },),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        child: Text("By creating an account, you agree to our Conditions of Use and Privacy Notice",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Register'),
                    onPressed: () {
                      setState(() {
                      Firstname= Firstnamecontroller.text;
                      Lastname= Lastnamecontroller.text;
                      Email= Emailcontroller.text;
                      Password= Passwordcontroller.text;
                      ConfirmPassword= ConfirmPasswordcontroller.text;
    if (Firstname.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Enter your first name")));
    } else if (Lastname.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Enter your last name")));
    } else if (Email.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Enter your email")));
    } else if (Password.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Enter your password")));
    } else if (ConfirmPassword.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Confirm your password")));
    }

    else if(Password!=ConfirmPassword)
    {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("Password must be same")));
    }
    else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage(),));
    }
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Alredy have an account ?'),

                    TextButton(onPressed:  () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => LoginPage(),));


                    }, child: Text('Login'))


                  ],
                ),
                  ),
                  ],
                  ),
            ]),
    );
  }
}
