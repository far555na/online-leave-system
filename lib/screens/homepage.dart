import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:online_leave_system/widgets/leave_balance_card.dart';
import 'package:online_leave_system/widgets/leave_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
                  title: Text(
              "หน้าหลัก",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary, 
              ),
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).colorScheme.primary,
            pinned: false,   // Not pinned, so scrolls away
            floating: false, // Doesn't reappear until reach top
          ),
          
          SliverToBoxAdapter(
            child: Column(  
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
                  
                Container(
                  margin: EdgeInsets.fromLTRB(20,20,20,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "สิทธิลาคงเหลือ",
                            style: Theme.of(context).textTheme.headlineSmall
                            
                          ),
                          TextButton(
                             onPressed: () {
                              setState(() {
                                expanded = !expanded; 
                              });
                            },
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap
                            ),  
                            child: Text(
                              expanded ? "ดูน้อยลง" : "ดูเพิ่มเติม",
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: Theme.of(context).colorScheme.primary,
                             )
                            ),
                          ),
                        ]
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [ 
                      //     LeaveBalanceCard(used: "10", total: "/15", title: "ลากิจ", icon: Icons.event),
                      //     LeaveBalanceCard(used: "10", total: "/15", title: "ลาป่วย", icon: Icons.medical_services),
                      //     LeaveBalanceCard(used: "10", total: "/15", title: "ลาพักร้อน", icon: Icons.beach_access),
                      //   ]
                      // ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        padding: EdgeInsets.zero,
                        children: List.generate(expanded ? 15 : 3, (index) {  
                          return LeaveBalanceCard(used: "10", total: "/15", title: "ลากิจ", icon: Icons.event);
                        }),
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
                      // Expanded(
                      //   child:
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        padding: EdgeInsets.zero,
                        itemBuilder: (BuildContext context, int index){
                        return
                          // _buildLeaveCard(context, "ลากิจ", "1 มกราคม 2568 - 1 มกราคม 2568 (1 วัน)", "กำลังดำเนินการ", "15 นาทีที่ผ่านมา", Icons.event);
                          LeaveCard(type: "ลากิจ", dayLeave: "1 มกราคม 2568 - 1 มกราคม 2568 (1 วัน)", status: "กำลังดำเนินการ", time: "15 นาทีที่ผ่านมา", icon: Icons.event);
                        }
                      )
                      // )

                    ],
                    
                  ),
                ),
            
                  
              ],
            ),
          ),
        ]
      )
        
    
    );
  }
}
