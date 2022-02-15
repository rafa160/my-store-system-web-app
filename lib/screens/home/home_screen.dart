import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_store_system_app/screens/dashboard/dashboard_module.dart';
import 'package:my_store_system_app/screens/home/home_components/icon_text_button.dart';
import 'package:my_store_system_app/styles/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: estelColor,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Minha loja Name', style: nameApp,),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextButton(
                    onTap: (){
                      _pageController.jumpToPage(0);
                    },
                    icon: FontAwesomeIcons.dashcube,
                    color: _page == 0 ? Colors.amberAccent : Colors.white,
                    containerColor: _page == 0 ? Colors.black26 : estelColor,
                    text: 'Dashboard',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextButton(
                    onTap: (){
                      _pageController.jumpToPage(1);
                    },
                    icon: FontAwesomeIcons.store,
                    color: _page == 1 ? Colors.amberAccent : Colors.white,
                    containerColor: _page == 1 ? Colors.black26 : estelColor,
                    text: 'Cadastrar Loja',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextButton(
                    onTap: (){
                      _pageController.jumpToPage(2);
                    },
                    icon: FontAwesomeIcons.productHunt,
                    color: _page == 2 ? Colors.amberAccent : Colors.white,
                    containerColor: _page == 2 ? Colors.black26 : estelColor,
                    text: 'Cadastrar Produto',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextButton(
                    onTap: (){
                      _pageController.jumpToPage(3);
                    },
                    icon: FontAwesomeIcons.table,
                    color: _page == 3 ? Colors.amberAccent : Colors.white,
                    containerColor: _page == 3 ? Colors.black26 : estelColor,
                    text: 'Cadastrar Mesa',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconTextButton(
                    onTap: (){
                      _pageController.jumpToPage(4);
                    },
                    icon: FontAwesomeIcons.tabletAlt,
                    color: _page == 4 ? Colors.amberAccent : Colors.white,
                    containerColor: _page == 4 ? Colors.black26 : estelColor,
                    text: 'Cadastrar Dispositivo',
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: onPageChanged,
              children: <Widget>[
                DashboardModule(),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.lightGreen,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurpleAccent,
                ),
              ]),
        ),
      ],
    ));
  }
}
