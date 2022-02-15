import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:my_store_system_app/components/custom_container_button.dart';
import 'package:my_store_system_app/components/custom_form_field.dart';
import 'package:my_store_system_app/screens/home/home_module.dart';
import 'package:my_store_system_app/styles/style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };

  final ScrollController controller = ScrollController();
  PageController _pageController = PageController();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final GlobalKey<FormBuilderState> _formKey2 = GlobalKey<FormBuilderState>();
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
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/food1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Card(
                        elevation: 4,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              bottomLeft: Radius.circular(60)),
                        ),
                        child: Container(
                          height: 600,
                          width: 800,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.2),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  'assets/images/food1.jpg',
                                )),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(60),
                                bottomLeft: Radius.circular(60)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Primeiro passo para é se cadastrar na plataforma.', style: appNameSubTitleBlack,),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(' - 30 dias de acesso grátis.', style: subTitleBlack14,),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(' - Dashboard com informações atualizadas em tempo real.', style: subTitleBlack14),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(' - Informações de Total a Receber, Quantidade de vendas, Cancelamentos e etc.', style: subTitleBlack14),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(' - Cadastre Lojas, Mesas ou até dispositivos ao seu Sistema.', style: subTitleBlack14),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: Container(
                          height: 600,
                          width: 600,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                bottomRight: Radius.circular(60)),
                          ),
                          child: PageView(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _pageController,
                            onPageChanged: onPageChanged,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: SingleChildScrollView(
                                  controller: controller,
                                  child: FormBuilder(
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                                          child: Text(
                                            'Cadastro',
                                            style: appNameSubTitleBlack,
                                          ),
                                        ),
                                        CustomFormField(
                                          text: 'name',
                                          initialValue: '',
                                          hint: 'Rafael Paz',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.name,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomFormField(
                                          text: 'email',
                                          initialValue: '',
                                          hint: 'email@email.com',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.emailAddress,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.email(context),
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomFormField(
                                          text: 'phone',
                                          initialValue: '',
                                          hint: ' 85 998442212',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.phone,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomFormField(
                                          text: 'password',
                                          initialValue: '',
                                          hint: 'password',
                                          enabled: true,
                                          action: TextInputAction.done,
                                          type: TextInputType.text,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: true,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomContainerButton(
                                          onPressed: () async {
                                            if(_formKey.currentState!.validate()) {
                                              _formKey.currentState!.save();
                                              _pageController.jumpToPage(1);
                                            }
                                          },
                                          widget: Text('Cadastrar', style: cardDashboardTitle,),
                                          color: estelColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: SingleChildScrollView(
                                  controller: controller,
                                  child: FormBuilder(
                                    key: _formKey2,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                                          child: Text(
                                            'Cadastre seu Empreendimento',
                                            style: appNameSubTitleBlack,
                                          ),
                                        ),
                                        CustomFormField(
                                          text: 'name',
                                          initialValue: '',
                                          hint: 'Restaurante das Pizzas',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.name,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomFormField(
                                          text: 'email',
                                          initialValue: '',
                                          hint: 'email@email.com',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.emailAddress,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.email(context),
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomFormField(
                                          text: 'phone',
                                          initialValue: '',
                                          hint: ' 85 998442212',
                                          enabled: true,
                                          action: TextInputAction.next,
                                          type: TextInputType.phone,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: false,
                                          maxLines: 1,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                                          child: Text(
                                            'Informações do Endereço',
                                            style: appNameSubTitleBlack,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              flex: 8,
                                              child: CustomFormField(
                                                text: 'street',
                                                initialValue: '',
                                                hint: 'Rua Lauro Maia',
                                                enabled: true,
                                                action: TextInputAction.next,
                                                type: TextInputType.name,
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(context),
                                                ]),
                                                obscureText: false,
                                                maxLines: 1,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: CustomFormField(
                                                text: 'number',
                                                initialValue: '',
                                                hint: '999',
                                                enabled: true,
                                                action: TextInputAction.next,
                                                type: TextInputType.number,
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(context),
                                                ]),
                                                obscureText: false,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              flex: 3,
                                              child: CustomFormField(
                                                text: 'district',
                                                initialValue: '',
                                                hint: 'Benfica',
                                                enabled: true,
                                                action: TextInputAction.next,
                                                type: TextInputType.name,
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(context),
                                                ]),
                                                obscureText: false,
                                                maxLines: 1,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              flex: 3,
                                              child: CustomFormField(
                                                text: 'city',
                                                initialValue: '',
                                                hint: 'Fortaleza',
                                                enabled: true,
                                                action: TextInputAction.next,
                                                type: TextInputType.number,
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(context),
                                                ]),
                                                obscureText: false,
                                                maxLines: 1,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              flex: 3,
                                              child: CustomFormField(
                                                text: 'state',
                                                initialValue: '',
                                                hint: 'Ceará',
                                                enabled: true,
                                                action: TextInputAction.next,
                                                type: TextInputType.number,
                                                validator: FormBuilderValidators.compose([
                                                  FormBuilderValidators.required(context),
                                                ]),
                                                obscureText: false,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomContainerButton(
                                          onPressed: () async {
                                            if(_formKey2.currentState!.validate()) {
                                              _formKey2.currentState!.save();
                                              _pageController.jumpToPage(1);
                                            }
                                          },
                                          widget: Text('Finalizar Cadastro', style: cardDashboardTitle,),
                                          color: estelColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
