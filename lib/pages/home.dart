import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:pharmacie/pages/settings.dart';
import 'package:pharmacie/pages/widgets/drug.dart';
import 'package:pharmacie/pages/widgets/header.dart';
import 'package:pharmacie/pages/widgets/newsDrug.dart';
import 'package:pharmacie/pages/widgets/product.dart';
import 'package:pharmacie/pages/widgets/search.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const [
      //     Text('Accueil'),
      //     Text('Mon avis'),
      //     Text('Parametre')
      //   ][_currentPage],
      //   shadowColor: Colors.green,
      //   surfaceTintColor: Colors.green,
      //   backgroundColor: Colors.green,
      // ),

      body: PageView(
        controller: _pageController,
        children: [
          const Home_page(),
          
          Container(color: Color.fromARGB(255, 1, 32, 25)),
          const Settings(),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),

      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: const <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.green,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(),
                SearchSection(),
                ProductSection(),
                Padding(
                  padding: EdgeInsets.only(left: 20),  
                  child: Text("Products",
                
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  decoration: TextDecoration.underline, 

                ),
                textAlign: TextAlign.start,
                ),
                ),

                
                DrugSection(),
                  Padding(
                  padding: EdgeInsets.only(left: 20),  
                  child: Text("Rates",
                
                style: TextStyle(
                  color: Colors.black, 
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  decoration: TextDecoration.underline, 

                ),
                textAlign: TextAlign.start,
                ),
                ),

                NewsDrugSection()


              ],
            )
          ],
        ),
      ),
    );
  }
}
