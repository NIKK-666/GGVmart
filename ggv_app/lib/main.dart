import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GGV Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDayMode = true;
  int _selectedIndex = 0; // Index for the selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFD7B8F3), Color(0xFFB8B8F3)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/009/032/564/original/ggv-logo-ggv-letter-ggv-letter-logo-design-initials-ggv-logo-linked-with-circle-and-uppercase-monogram-logo-ggv-typography-for-technology-business-and-real-estate-brand-vector.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Text(
              'GGV',
              style: TextStyle(
                color: Color(0xFFfaf9f9),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle "Add to Cart" action
              print('Add to Cart Pressed');
            },
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    // Navigate to SettingsPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text('Settings'),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    // Handle user profile icon tap
                    print('User Profile Tapped');
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text('User'),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isDayMode = !isDayMode;
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        isDayMode ? Icons.wb_sunny : Icons.nightlight_round,
                        color: isDayMode ? Colors.yellow : Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text(isDayMode ? 'Day' : 'Night'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFfafaff),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Browse Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0a100d),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Redirect user to AllCategoriesPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllCategoriesPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'See More',
                      style: TextStyle(
                        color: Color(0xFF0a100d),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Electronics',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Clothing',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Furniture',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Bikes',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Mobiles',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: null,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(
                      color: Color(0xFFD7B8F3),
                    ),
                  ),
                  child: Text(
                    'Sports Equipments',
                    style: TextStyle(
                      color: Color(0xFF0a100d),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendations',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0a100d),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1585351650024-8e333a17aeff?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Cameras',
                          description: 'Short description for Product 1',
                        ),
                      ),
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1540066019607-e5f69323a8dc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Cars',
                          description: 'Short description for Product 2',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1614165936126-2ed18e471b3b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Bikes',
                          description: 'Short description for Product 3',
                        ),
                      ),
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Mobiles',
                          description: 'Short description for Product 4',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1647619124290-10fb9273b4b5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Electronics Items',
                          description: 'Short description for Product 5',
                        ),
                      ),
                      Expanded(
                        child: AdCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1652497256500-e82ace47de6c?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'Sports Equipments',
                          description: '',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell_sharp),
            label: 'Sell',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          // Handle different options based on the selected index
          if (_selectedIndex == 1) {
            // Chat tab is selected, navigate to ChatOptionsPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatOptionsPage()),
            );
          } else if (_selectedIndex == 2) {
            // "Sell" tab is selected, navigate to SellPage (you can replace this with your actual selling page)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SellPage()),
            );
          }
        },
        selectedItemColor: Color(0xFF1a1a1a),
      ),
    );
  }
}

class AdCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  AdCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the ad details page when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AdDetailsPage(
              imageUrl: imageUrl,
              title: title,
              description: description,
            ),
          ),
        );
      },
      child: Tooltip(
        message: description,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  child: Stack(
                    children: [
                      Image.network(
                        imageUrl,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black.withOpacity(0.7),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFfaf9f9),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              print('Notifications Pressed');
            },
            child: Text('Notifications'),
          ),
          TextButton(
            onPressed: () {
              print('Privacy Policy Pressed');
            },
            child: Text('Privacy Policy'),
          ),
          TextButton(
            onPressed: () {
              print('Help & Support Pressed');
            },
            child: Text('Help & Support'),
          ),
        ],
      ),
    );
  }
}

class ChatOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Options'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              print('All Chats Pressed');
            },
            child: Text('All Chats'),
          ),
          TextButton(
            onPressed: () {
              print('Buying Chats Pressed');
            },
            child: Text('Buying Chats'),
          ),
          TextButton(
            onPressed: () {
              print('Selling Chats Pressed');
            },
            child: Text('Selling Chats'),
          ),
        ],
      ),
    );
  }
}

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell'),
      ),
      body: Center(
        child: Text('Your Sell Page Content Goes Here'),
      ),
    );
  }
}

class AdDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  AdDetailsPage({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ad Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Categories'),
      ),
      body: Center(
        child: Text('All Browsing Categories Here'),
      ),
    );
  }
}
