import 'package:flutter/material.dart';
import 'package:sneakershop/components/bottom_navbar.dart';
import 'package:sneakershop/pages/cartpage.dart';
import 'package:sneakershop/pages/shoppage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
     ShopPage(),
     CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(icon: const Icon(Icons.menu,color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            );
          }
        )
        
        
          
          
        
      ) ,
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('lib/images/nike-4-logo-png-transparent.png',color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: ListTile(
                  leading: Icon(Icons.home,color: Colors.white,),
                  title: Text('Home',style: TextStyle(color: Colors.white),),
              
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left :15.0),
                child: ListTile(
                  leading: Icon(Icons.info,color: Colors.white,),
                  title: Text('About',style: TextStyle(color: Colors.white),),
              
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left :15.0),
                child: ListTile(
                  leading: Icon(Icons.logout,color: Colors.white,),
                  title: Text('Logout',style: TextStyle(color: Colors.white),),
              
                ),
              )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
