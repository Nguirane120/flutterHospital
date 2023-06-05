import 'package:flutter/material.dart';
import 'package:mediacal_health/scrrens/login_screen.dart';
import 'package:mediacal_health/widgets/app_bar.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NavbarRoots();
                }));
              }, child: Text("SKIP")),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("images/dc1.avif"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Doctor Appointment",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
            ),
            Text("Appoint your doctor"),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginScreen();
                      }));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
