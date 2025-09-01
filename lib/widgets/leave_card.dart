import 'package:flutter/material.dart';
import 'package:online_leave_system/theme/color_scheme.dart';

class LeaveCard extends StatelessWidget {
  final String type;
  final String dayLeave;
  final String status;
  final String time;
  final IconData icon;

  const LeaveCard({
    super.key,
    required this.type,
    required this.dayLeave,
    required this.status,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: double.infinity,
          child: Card(
            elevation: 0.0,
            color: Theme.of(context).colorScheme.pendingCardBg,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.pendingIconBg,
                    ),
                    child: Icon(
                      icon,
                      size: 25,
                      color: Theme.of(context).colorScheme.pending,
                    ),
                  ),

                  const SizedBox(width: 15),

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
                              style:
                                  Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                              dayLeave,
                              style:
                                  Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              status,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .pending,
                                  ),
                            ),
                            Text(
                              time,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: Theme.of(context).hintColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
