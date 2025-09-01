import 'package:flutter/material.dart';
import 'package:online_leave_system/main.dart';
import 'package:online_leave_system/theme/color_scheme.dart';

class LeaveBalanceCard extends StatelessWidget {
  final String used;
  final String total;
  final String title;
  final IconData icon;

  const LeaveBalanceCard({
    super.key,
    required this.used,
    required this.total,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 110,
      child: Card(
        elevation: 0.0,
        color: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  icon,
                  size: 20,
                  color: Theme.of(context).colorScheme.tertiary,
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
                  const SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        total,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                      const SizedBox(height: 3),
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
          ),
        ),
      ),
    );
  }
}

List<Widget> visibleCards = [ 
    LeaveBalanceCard(used: "10", total: "/15", title: "ป่วย", icon: Icons.medical_services), 
    LeaveBalanceCard(used: "10", total: "/15", title: "กิจธุระ", icon: Icons.work), 
    LeaveBalanceCard(used: "10", total: "/15", title: "พักร้อน", icon: Icons.beach_access), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ป่วยจากงาน", icon: Icons.warning), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ประชุมราชการ", icon: Icons.account_balance), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ประชุมบริษัท", icon: Icons.business), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ฝึกอบรม", icon: Icons.school), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ทำศพ", icon: Icons.local_florist), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ภัยธรรมชาติ", icon: Icons.flash_on), 
    LeaveBalanceCard(used: "10", total: "/15", title: "เรียกทหาร", icon: Icons.military_tech), 
    LeaveBalanceCard(used: "10", total: "/15", title: "อุปสมบท", icon: Icons.self_improvement), 
    LeaveBalanceCard(used: "10", total: "/15", title: "งานสมรส", icon: Icons.favorite), 
    LeaveBalanceCard(used: "10", total: "/15", title: "คลอดบุตร", icon: Icons.child_care), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ภรรยาคลอด", icon: Icons.family_restroom), 
    LeaveBalanceCard(used: "10", total: "/15", title: "ทำหมัน", icon: Icons.health_and_safety), 
  ];