import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trips4you/screens/tabs/atractivos.dart';
import 'package:trips4you/screens/tabs/gastronomia.dart';
import 'package:trips4you/screens/tabs/home.dart';
import 'package:trips4you/screens/tabs/ofertas.dart';
import 'package:trips4you/screens/tabs/resenas.dart';

class TabPrincipal extends StatelessWidget {
  const TabPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF6ECB63),
            title: Center(child: Text('Trips 4 You')),
            bottom: TabBar(
              //se ajusta su tamaño y se puede mover hacia el lado
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text('Home'),
                  icon: Icon(MdiIcons.earth),
                ),
                Tab(
                  child: Text('Atractivos'),
                  icon: Icon(MdiIcons.selectPlace),
                ),
                Tab(
                  child: Text('Gastronomia'),
                  icon: Icon(MdiIcons.food),
                ),
                Tab(
                  child: Text('Ofertas'),
                  icon: Icon(MdiIcons.offer),
                ),
                Tab(
                  child: Text('Reseñas'),
                  icon: Icon(MdiIcons.message),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              AtractivosScreen(),
              GastronomiaScreen(),
              OfertasScreen(),
              ResenasScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
