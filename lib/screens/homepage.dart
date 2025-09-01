import 'package:flutter/material.dart';
import 'package:online_leave_system/main.dart';
import 'package:online_leave_system/widgets/leave_balance_card.dart';
import 'package:online_leave_system/widgets/leave_card.dart';

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
                      LeaveBalanceCard(used: "10", total: "/15", title: "ลากิจ", icon: Icons.event),
                      LeaveBalanceCard(used: "10", total: "/15", title: "ลาป่วย", icon: Icons.medical_services),
                      LeaveBalanceCard(used: "10", total: "/15", title: "ลาพักร้อน", icon: Icons.beach_access),
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
                      // _buildLeaveCard(context, "ลากิจ", "1 มกราคม 2568 - 1 มกราคม 2568 (1 วัน)", "กำลังดำเนินการ", "15 นาทีที่ผ่านมา", Icons.event);
                      LeaveCard(type: "ลากิจ", dayLeave: "1 มกราคม 2568 - 1 มกราคม 2568 (1 วัน)", status: "กำลังดำเนินการ", time: "15 นาทีที่ผ่านมา", icon: Icons.event);
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
