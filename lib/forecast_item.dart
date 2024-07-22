import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  final String label;
  final IconData icon;
  final String value;
  const HourlyForecast({
    super.key,
    required this.label,
    required this.icon,
    required this.value,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        padding: const EdgeInsets.all(8.0), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        width: 100,
        child: Column(
          children: [
            Text(
              label,
              style:const  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              value,
            ),
          ],
        ),
      ),
    );
  }
}
