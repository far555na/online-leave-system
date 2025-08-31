import 'package:flutter/material.dart';
import 'package:online_leave_system/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      appBar: AppBar(
        title: Text(
          "หน้าหลัก",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary, 
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      
      body: Column(  
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: [


          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0), 
                bottomRight: Radius.circular(50.0), 
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/employee.png"),
                  radius: 50,
                ),
                 SizedBox(
                  height: 30,
                ),
                Text(
                  "ยินดีต้อนรับกลับมา",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ), 
                ),
                Text(
                  "นายพฤหัสบดี ศรีราชา",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ), 
                ),
                // SizedBox(
                //   height: 5,
                // ),
                SizedBox(
                  height: 25,
                )
              ]
            )      
          ),
      
          Expanded(
            child: Container(
              // height: 499,
              margin: EdgeInsets.fromLTRB(20,20,20,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "สิทธิลาคงเหลือ",
                    style: Theme.of(context).textTheme.headlineSmall
                    
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                      _buildBalanceLeaveCard(context, "10", "/15", "ลากิจ", Icons.event),
                      _buildBalanceLeaveCard(context, "10", "/15", "ลาป่วย", Icons.medical_services),
                      _buildBalanceLeaveCard(context, "10", "/15", "ลาพักร้อน", Icons.beach_access),
                    ]
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Text(
                    "ประวัติการลา",
                    style: Theme.of(context).textTheme.headlineSmall
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(child: 
                  ListView.builder(
                    // shrinkWrap: true,
                    itemCount: 3,
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    itemBuilder: (BuildContext context, int index){
                    return
                      _buildLeaveCard(context, "ลากิจ", "1 มกราคม 2568 - 1 มกราคม 2568 (1 วัน)", "กำลังดำเนินการ", "15 นาทีที่ผ่านมา", Icons.event);
                    }
                  ))

                  

              

                ],
                
              ),
            ),
          ),
             
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าหลัก"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "ยื่นใบลา"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "ประวัติการลา"),
        ],
        selectedItemColor: Theme.of(context).colorScheme.primary,
      )
    
    );
  }
}

Widget _buildBalanceLeaveCard(BuildContext context, String used, String total, String title, IconData icon){
  return Container(
    width: 120,
    height: 110,
    child:  Card(
      elevation: 0.0,
      color: Theme.of(context).colorScheme.secondary,
      child: Container(
        padding: EdgeInsets.all(8),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                heightFactor: 1,
                child: Icon(
                  icon,
                  size: 20,
                  color: Theme.of(context).colorScheme.tertiary
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  used,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ), 
                
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                      Text(
                      total,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.grey,
                        ),
                    ),
                    const SizedBox(
                      height: 3,
                    )
                  ],
                ),
              ],
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        )
      )
    )
  );
}

Widget _buildLeaveCard(BuildContext context, String type, String dayLeave, String status, String time, IconData icon){
  return Column(
    children: [
      Container(
        height: 110,
        width: double.infinity,
        child: Card(
          elevation: 0.0,
          color: Theme.of(context).colorScheme.pendingCardBg,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.pendingIconBg,
                  ),
                  child: Icon(
                    icon,
                    size: 25,
                    color: Theme.of(context).colorScheme.pending,
                  ),
                ), 

                SizedBox(
                  width: 15,
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            type,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            dayLeave,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ]
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            status,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.pending
                            ),
                          ),
                          Text(
                            time,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.grey
                            ),
                          ),
                        ],
                      ),
                    ],
                  )  
                )
              ],
            )
          ),
        ),
      ),
      SizedBox(height: 5)
    ]
  );
}