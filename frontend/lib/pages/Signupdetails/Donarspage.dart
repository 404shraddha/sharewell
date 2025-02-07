import 'package:flutter/material.dart';
import '../../Donarsform/Resturants.dart';
import '../../Donarsform/individual.dart';
import '../../common/Cards/Card 1.dart';
import '../../constant/App_Colour.dart';

class Donarspage extends StatefulWidget {
  const Donarspage({super.key});

  @override
  _DonarspageState createState() => _DonarspageState();
}

class _DonarspageState extends State<Donarspage> {
  String selectedType = ""; // Store the selected type

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("Donor Type")),
          titleTextStyle: TextStyle(
            // color: AppColors.primary,
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffFFFFFF),
        ),
        backgroundColor: AppColors.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionCard(
                  image: "assets/images/restaurant.png",
                  text: "Restaurant",
                  isSelected: selectedType == "Restaurant",
                  onTap: () {
                    setState(() {
                      selectedType = "Restaurant";
                    });
                  },
                ),
                const SizedBox(width: 20),
                SelectionCard(
                  image: "assets/images/individual.png",
                  text: "Individual",
                  isSelected: selectedType == "Individual",
                  onTap: () {
                    setState(() {
                      selectedType = "Individual";
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: selectedType == "Restaurant"
                  ? RestaurantForm()
                  : selectedType == "Individual"
                      ? IndividualForm()
                      : const Center(child: Text("Select a Donor Type")),
            ),
          ],
        ),
      ),
    );
  }
}
