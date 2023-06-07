import 'package:flutter/material.dart';
import 'package:mediacal_health/faskeData/doctors.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Message",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 10, spreadRadius: 2)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search", border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF7165D6),
                  )
                ],
              ),
            ),
          ),
            SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Active now", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctorList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 65,
                  height: 65,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  // margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 4)
                      ]),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: Container(
                          width: 65,
                          height: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'images/${doctorList[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.all(3),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
         
            SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text("Recent Chat", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/${doctorList[index]}"),
                  ),
                  title: Text(
                    "Doctor Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text("hello doctor ! Are tou there ?"),
                  trailing: Text("16:46"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
