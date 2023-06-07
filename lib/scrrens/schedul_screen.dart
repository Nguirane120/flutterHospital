import 'package:flutter/material.dart';
import 'package:mediacal_health/utils.dart';
import 'package:mediacal_health/widgets/upcaming.dart';

class SchedulScreen extends StatefulWidget {
  const SchedulScreen({super.key});

  @override
  State<SchedulScreen> createState() => _SchedulScreenState();
}

class _SchedulScreenState extends State<SchedulScreen> {
  int scheduleButtn = 0;

  final _schedulWidget = [
    // Center(child: Text("Upcaming"),),
    UpcamingScreen(),
    Center(child: Text("Upcaming"),),
    Center(child: Text("Upcaming"),),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Schedule", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      scheduleButtn = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: scheduleButtn == 0 ? Color(0xFF7165D6) : Colors.transparent
                    ),
                    child: Text("Upcaming"),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      scheduleButtn = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: scheduleButtn == 1 ? Color(0xFF7165D6) : Colors.transparent
                    ),
                    child: Text("Pending"),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      scheduleButtn = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: scheduleButtn == 2 ? Color(0xFF7165D6) : Colors.transparent
                    ),
                    child: Text("Canceled"),
                  ),
                ),
              ],
            ),
          
          ),
          SizedBox(height: 30,),
          _schedulWidget[scheduleButtn]

        ],
      ),
    );
  }
}
