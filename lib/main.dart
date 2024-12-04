import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/features/basket_screen/basket_screen.dart';
import 'package:test_online_store/features/catalog_screen/catalog_screen.dart';
import 'package:test_online_store/features/main_screen/main_screen.dart';
import 'package:test_online_store/features/profile_screen/profile_screen.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MainScreen(),
    const CatalogScreen(),
    const BasketScreen(),
    const ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const labelStyle = AppTextStyles.raleway500;
    const selectedColor = Colors.black;

    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: selectedColor,
          unselectedLabelStyle: labelStyle,
          selectedLabelStyle: labelStyle.copyWith(
            color: selectedColor,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AssetsPictures.house),
              ),
              label: AllText.main,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AssetsPictures.magnifyingGlass),
              ),
              label: AllText.catalog,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AssetsPictures.shoppingCartSimple),
              ),
              label: AllText.basket,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AssetsPictures.user),
              ),
              label: AllText.profile,
            ),
          ],
        ),
      ),
    );
  }
}
