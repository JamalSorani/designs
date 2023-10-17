import 'package:flutter/material.dart';

List<Widget> list = [
  const Product(
      title: 'Total Sales',
      icon: Icons.shopping_cart_outlined,
      quantity: '2,001'),
  const Product(
      title: 'Daily Visits', icon: Icons.visibility, quantity: '2,139'),
  const Product(
      title: 'Total Income', icon: Icons.attach_money, quantity: '2,632'),
  const Product(title: 'Total Orders', icon: Icons.list_alt, quantity: '1,711'),
  const Product(
      title: 'Total Sales',
      icon: Icons.shopping_cart_outlined,
      quantity: '2,001'),
  const Product(
      title: 'Daily Visits', icon: Icons.visibility, quantity: '2,139'),
  const Product(
      title: 'Total Income', icon: Icons.attach_money, quantity: '2,632'),
  const Product(title: 'Total Orders', icon: Icons.list_alt, quantity: '1,711'),
  const Product(
      title: 'Total Sales',
      icon: Icons.shopping_cart_outlined,
      quantity: '2,001'),
  const Product(
      title: 'Daily Visits', icon: Icons.visibility, quantity: '2,139'),
  const Product(
      title: 'Total Income', icon: Icons.attach_money, quantity: '2,632'),
  const Product(title: 'Total Orders', icon: Icons.list_alt, quantity: '1,711'),
];

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.4),
        itemBuilder: (context, index) => list[index],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.title,
      required this.icon,
      required this.quantity});
  final String title;
  final String quantity;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 75, top: 35),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      quantity,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -42,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 1, left: 35),
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
