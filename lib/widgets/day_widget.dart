import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final String text1;
  final String day;
  const DayWidget({super.key,
  required this.text1,required this.day});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(style: BorderStyle.solid),
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(text1,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              day,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
     );
  }
}