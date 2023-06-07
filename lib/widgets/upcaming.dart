import 'package:flutter/material.dart';

class UpcamingScreen extends StatelessWidget {
  const UpcamingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Doctor"),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                        "Doctor Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Chirurgien"),
                      trailing: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("images/doc1.avif"),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          Text(
                            "07/06/2023",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          Text(
                            "12:08",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "confirmed",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF0EEFA),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Canceled", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          // margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("About Doctor"),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                        "Doctor Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Chirurgien"),
                      trailing: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("images/doc1.avif"),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          Text(
                            "07/06/2023",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          Text(
                            "12:08",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "confirmed",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF0EEFA),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Canceled", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          // margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("About Doctor"),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    spreadRadius: 4,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                        "Doctor Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Chirurgien"),
                      trailing: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("images/doc1.avif"),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          Text(
                            "07/06/2023",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            color: Colors.black54,
                          ),
                          Text(
                            "12:08",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "confirmed",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFF0EEFA),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Canceled", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          // margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFF7165D6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text("Reschedule", style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
