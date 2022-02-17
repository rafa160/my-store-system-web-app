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
        print(constraints.constrainWidth());
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  child: MyAppbar(), preferredSize: Size(double.infinity, 56))
              : const PreferredSize(
                  child: MyAppbar(), preferredSize: Size(double.infinity, 56)),
          body: SingleChildScrollView(
            controller: controller,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      color: estelColor,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            icon: FontAwesomeIcons.coins,
                            text: 'Total de Vendas',
                            value: 'R\$ 1.500,00',
                            cardColor: Colors.green,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.moneyCheckAlt,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Total a Receber',
                            value: 'R\$ 300,00',
                            cardColor: Colors.greenAccent,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.moneyBillAlt,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Total Recebido',
                            value: 'R\$ 1.200,00',
                            cardColor: Colors.lightBlue,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.productHunt,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Produtos Vendidos',
                            value: '120',
                            cardColor: Colors.amber,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.moneyBillWave,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Vendas em Cash',
                            value: '11',
                            cardColor: Colors.orangeAccent,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.creditCard,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Vendas com Cartão',
                            value: '1',
                            cardColor: Colors.orangeAccent,
                          ),
                          CardDashboard(
                            height: constraints.maxWidth > 600 ? 120 : 80 ,
                            width: constraints.maxWidth > 600 ? 300 : 100,
                            icon: FontAwesomeIcons.arrowAltCircleDown,
                            textSize: constraints.maxWidth > 600 ? 14 : 8,
                            iconSize: constraints.maxWidth > 600 ? 40 : 12,
                            valueTextSize: constraints.maxWidth > 600 ? 18 : 10,
                            text: 'Cancelamentos',
                            value: '3',
                            cardColor: activeColor,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: constraints.maxWidth < 800 ? 280: 380 ,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Active Orders',
                                style: appBarTitle,
                              ),
                              Flexible(
                                flex:
                                10,
                                child: Container(
                                  height: 900,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              Text('fsdfsdfsdfsdfsdfsdfsdf'),
                            ],
                          ),

                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
