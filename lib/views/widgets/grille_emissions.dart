import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../models/emission.dart';
import 'carte_emission.dart';

class GrilleEmissions extends StatelessWidget {
  final List<Emission> emissions;
  final Function(Emission) onEmissionSelected;

  const GrilleEmissions({
    super.key,
    required this.emissions,
    required this.onEmissionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      desiredItemWidth: 160,
      minSpacing: 10,
      children: emissions.map((emission) {
        return SizedBox(
          height: 200,
          child: CarteEmission(
            emission: emission,
            onTap: () => onEmissionSelected(emission),
          ),
        );
      }).toList(),
    );
  }
}