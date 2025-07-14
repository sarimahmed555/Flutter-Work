import 'package:app/screens/widgets/card.dart' as custom_card;
import 'package:app/screens/widgets/category.dart' as custom_category;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/widgets/banner.dart' as custom_banner;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banners = ['banner1.jpg', 'banner2.jpg', 'banner3.jpg'];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 48, 108, 230),
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset('assets/images/logo.png',height: 100,),
        ),
        title: Text('E-commerce Platform', style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Badge(
              label: Text('10'),
              child: Icon(CupertinoIcons.bell, color: Colors.white, size: 20,),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Search Box
          Card(
            margin: EdgeInsets.all(15),

            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none,
              ),
            ),
          ),
          // Banners
          SizedBox(
            height: 150,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                for (String banner in banners)
                  custom_banner.Banner(image: banner),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                for (int index = 0; index < banners.length; index++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: currentIndex == index ? 12 : 0,
                    width: currentIndex == index ? 12 : 0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? Colors.grey
                          : const Color.fromARGB(255, 66, 66, 66),
                    ),
                  ),
              ],
            ),
          ),
          // Categories
            ListTile(
              title: Text('Categories'),
              trailing: Text('Show All', style: TextStyle(color: Colors.indigo)),
            ),
          SizedBox(
            height: 100,
            child: ListView(
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              children: [
                custom_category.Category(
                  title: 'Beauty',
                  image: 'beauty.png',
                  color: Colors.orange,
                ),
                custom_category.Category(
                  title: 'Baby',
                  image: 'baby.png',
                  color: Colors.indigo,
                ),
                custom_category.Category(
                  title: 'Kitchen',
                  image: 'kitchen.png',
                  color: Colors.green,
                ),
                custom_category.Category(
                  title: 'Medical',
                  image: 'medical.png',
                  color: Colors.blueAccent,
                ),
                custom_category.Category(
                  title: 'Electronics',
                  image: 'electronics.png',
                  color: Colors.deepOrange,
                ),
                custom_category.Category(
                  title: 'Beauty',
                  image: 'beauty.png',
                  color: Colors.orange,
                ),
                custom_category.Category(
                  title: 'Baby',
                  image: 'baby.png',
                  color: Colors.indigo,
                ),
                custom_category.Category(
                  title: 'Kitchen',
                  image: 'kitchen.png',
                  color: Colors.green,
                ),
                custom_category.Category(
                  title: 'Medical',
                  image: 'medical.png',
                  color: Colors.blueAccent,
                ),
                custom_category.Category(
                  title: 'Electronics',
                  image: 'electronics.png',
                  color: Colors.deepOrange,
                ),
              ],
            ),
          ),
          // Products
          ListTile(
            title: Text('Products'),
            trailing: Text('Show All', style: TextStyle(color: Colors.indigo)),
          ),
          GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.symmetric(horizontal: 15),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              custom_card.Cards(
                title: 'Professional Medical Products',
                image: 'product3.jpg',
                price: '30,000',
              ),
              custom_card.Cards(
                title: 'All Electronics Products',
                image: 'product1.jpg',
                price: '80,000',
              ),
              custom_card.Cards(
                title: 'Professional Kitchen Products',
                image: 'product5.jpg',
                price: '90,000',
              ),
              custom_card.Cards(
                title: 'Nude Beuaty Complete Package',
                image: 'product2.jpeg',
                price: '110,000',
              ),
              custom_card.Cards(
                title: 'Jhonsons Orignal Baby Packages',
                image: 'product4.jpg',
                price: '60,000',
              ),
              custom_card.Cards(
                title: 'Professional Medical Products',
                image: 'product3.jpg',
                price: '30,000',
              ),
              custom_card.Cards(
                title: 'All Electronics Products',
                image: 'product1.jpg',
                price: '80,000',
              ),
              custom_card.Cards(
                title: 'Professional Kitchen Products',
                image: 'product5.jpg',
                price: '90,000',
              ),
              custom_card.Cards(
                title: 'Nude Beuaty Complete Package',
                image: 'product2.jpeg',
                price: '110,000',
              ),
              custom_card.Cards(
                title: 'Jhonsons Orignal Baby Packages',
                image: 'product4.jpg',
                price: '60,000',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
