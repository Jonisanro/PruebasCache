import 'package:bases_web/services/navigators_services.dart';

import '../../locator.dart';
import 'custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
return LayoutBuilder(
  builder: (_, BoxConstraints constraints) =>
     constraints.maxWidth > 520
        ? _tabletDesktopMenu()
        : _mobileMenu()
  
);
  }

  Container _tabletDesktopMenu() {
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: double.infinity,
    child: Row(
      children: [
        CustomFlatButtom(
          text: 'Contador Stateful',
          onPressed: () {
            locator<NavigationService>().navigateTo('/stateful');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        CustomFlatButtom(
          text: 'Contador Provider',
          onPressed: () {
            locator<NavigationService>().navigateTo('/provider');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        CustomFlatButtom(
          text: 'Otra Pagina',
          onPressed: () {
           locator<NavigationService>().navigateTo('/dsadas');
          },
          color: Colors.black,
        )
      ],
    ),
  );
  }


  Container _mobileMenu() {
    return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomFlatButtom(
          text: 'Contador Stateful',
          onPressed: () {
            locator<NavigationService>().navigateTo('/stateful');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        CustomFlatButtom(
          text: 'Contador Provider',
          onPressed: () {
            locator<NavigationService>().navigateTo('/provider');
          },
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        CustomFlatButtom(
          text: 'Otra Pagina',
          onPressed: () {
           locator<NavigationService>().navigateTo('/dsadas');
          },
          color: Colors.black,
        )
      ],
    ),
  );
  }
}
