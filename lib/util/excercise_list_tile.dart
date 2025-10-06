import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExcerciseListTile extends StatelessWidget {

  final icon;
  final String exerciseName;
  final int exerciseNumber;
  final color;
  const ExcerciseListTile({super.key, this.icon, required this.exerciseName, required this.exerciseNumber, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding:EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                    Text("${exerciseNumber}15 Exercise",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey)),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
