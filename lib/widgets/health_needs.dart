import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Appointment", icon: "assets/appointment.png"),
      CustomIcon(name: "Hospital", icon: "assets/hospital.png"),
      CustomIcon(name: "Covid-19", icon: "assets/virus.png"),
      CustomIcon(name: "More", icon: "assets/more.png"),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primaryContainer
                    .withOpacity(0.4),
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            SizedBox(height: 6),
            Text(customIcons[index].name),
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;
  CustomIcon({required this.icon, required this.name});
}
