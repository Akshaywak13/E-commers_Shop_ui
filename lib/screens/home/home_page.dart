import 'package:ecommerce_shope_ui/screens/home/category_selection.dart';
import 'package:ecommerce_shope_ui/screens/home/product_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          // My App bar
          myAppBar(),
          // Foe Search Bar
          mySearchBar(),
          // For List of Category Tab bar
          CategorySelection(),

          ProductItems(),
        ],
      )),
    );
  }

  Padding mySearchBar() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.05),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      fillColor: Colors.white,
                      hintText: "Search...",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black26,
                      ),
                      prefixIcon: Icon(Icons.search,
                      size: 30,
                      color: Colors.black26,)
                      ),
            ),
          ),
        );
  }

  Padding myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_ios),
          const Text(
            "Explore",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Image.asset(
            "assets/images/menu.png",
            height: 25,
          )
        ],
      ),
    );
  }
}
