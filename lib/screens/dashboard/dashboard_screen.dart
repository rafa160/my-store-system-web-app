import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_store_system_app/components/loading_indicator.dart';
import 'package:my_store_system_app/components/my_appbar.dart';
import 'package:my_store_system_app/screens/dashboard/components/card_dashboard.dart';
import 'package:my_store_system_app/styles/style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  child: MyAppbar(), preferredSize: Size(double.infinity, 56))
              : const PreferredSize(
                  child: MyAppbar(), preferredSize: Size(double.infinity, 56)),
          body: SingleChildScrollView(
            controller: controller,
            child: Stack(
              children: [
                Container(
                  color: estelColor,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: const [
                      CardDashboard(
                        height: 120,
                        width: 300,
                        icon: FontAwesomeIcons.coins,
                        text: 'Total de Vendas',
                        value: 'R\$ 1.500,00',
                        cardColor: Colors.green,
                      ),
                      CardDashboard(
                        height: 120,
                        width: 300,
                        icon: FontAwesomeIcons.moneyCheckAlt,
                        text: 'Total a Receber',
                        value: 'R\$ 300,00',
                        cardColor: Colors.greenAccent,
                      ),
                      CardDashboard(
                        height: 120,
                        width: 300,
                        icon: FontAwesomeIcons.moneyBillAlt,
                        text: 'Total Recebido',
                        value: 'R\$ 1.200,00',
                        cardColor: Colors.lightBlue,
                      ),
                      CardDashboard(
                        height: 120,
                        width: 300,
                        icon: FontAwesomeIcons.productHunt,
                        text: 'Produtos Vendidos',
                        value: '120',
                        cardColor: Colors.amber,
                      ),
                      CardDashboard(
                        height: 120,
                        width: 300,
                        icon: FontAwesomeIcons.arrowAltCircleDown,
                        text: 'Cancelamentos',
                        value: '3',
                        cardColor: activeColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
