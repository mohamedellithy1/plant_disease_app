import 'package:flutter/material.dart';
import 'package:plant_disease_app/core/helpers/extensions.dart';
import 'package:plant_disease_app/core/routing/raoutes.dart';
import 'package:plant_disease_app/features/home_srcreen/ui/widgets/item_plants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.resultScreen);
                  },
                  child: const ItemPlants(
                    image: 'assets/images/tomatos_image.png',
                  ),
                ),
                itemCount: 20,
                padding: const EdgeInsets.all(0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
