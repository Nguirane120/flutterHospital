import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediacal_health/scrrens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggele = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/dc1.avif"),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter username",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email)),
              ),
            ), 
             Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone",
                    prefixIcon: Icon(Icons.email)),
              ),
            ), 
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                obscureText: passToggele,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Passord",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: InkWell(
                      onTap: (){
                        if(passToggele){
                          passToggele = false;
                        }else{
                          passToggele = true;
                        }
                      setState(() {
                        
                      });
                      },
                    child: passToggele ? Icon(CupertinoIcons.eye_fill) : Icon(CupertinoIcons.eye_slash_fill),
                    )
                    ),
                    
              ),
            ),
               Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return LoginScreen();
                    // }));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Center(
                      child: Text(
                        "Create account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                  ),
                  
                ),
              ),
            ),

          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Alrady have accounnt ?", style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54)),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginScreen();
                }));
              }, child: Text("Log In", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7165D6)
                        ), ))
            ],
          )
          ],

        )),
      ),
    );
  }
}
