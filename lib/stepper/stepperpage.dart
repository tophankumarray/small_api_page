import 'package:flutter/material.dart';



class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.restaurant_menu,color: Colors.redAccent,),
              title: const Text('Dining',
              style: TextStyle(color: Colors.redAccent),
              ),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Breakfast & brunch'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Sushi Bars'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Filpino Food'),
                ),
              ],
              ),
          ),
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.restaurant_menu,color: Colors.redAccent,),
              title: const Text('Dining',
              style: TextStyle(color: Colors.redAccent),
              ),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Breakfast & brunch'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Sushi Bars'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Filpino Food'),
                ),
              ],
              ),
          ),
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.restaurant_menu,color: Colors.redAccent,),
              title: const Text('Dining',
              style: TextStyle(color: Colors.redAccent),
              ),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Breakfast & brunch'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Sushi Bars'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Filpino Food'),
                ),
              ],
              ),
          ),
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.restaurant_menu,color: Colors.redAccent,),
              title: const Text('Dining',
              style: TextStyle(color: Colors.redAccent),
              ),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Breakfast & brunch'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Sushi Bars'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Filpino Food'),
                ),
              ],
              ),
          ),
          Card(
            child: ExpansionTile(
              leading: const Icon(Icons.restaurant_menu,color: Colors.redAccent,),
              title: const Text('Dining',
              style: TextStyle(color: Colors.redAccent),
              ),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Breakfast & brunch'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Sushi Bars'),
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                  onTap: (){},
                  title: const Text('Filpino Food'),
                ),
              ],
              ),
          ),
        ],
      ),
    );
  }
}