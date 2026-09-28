import 'package:flutter/material.dart';
import 'package:healthapp/widgets/health_needs.dart';
import 'package:healthapp/widgets/nearby_doctor.dart';
import 'package:healthapp/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Ankur", style: Theme.of(context).textTheme.headlineSmall),
            Text(
              "How Are you felling today?",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notificationsOutline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.searchOutline),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),

        children: [
          //upcoming card
          UpcomingCard(),

          SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 15),
          const HealthNeeds(),
          // Health Needs
          SizedBox(height: 15),
          // Nearby Doctors
          Text(
            "Nearby Doctors",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 15),
          const NearbyDoctors(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.homeOutline),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendarOutline),
            label: "Calender",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubbleOutline),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.personOutline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
