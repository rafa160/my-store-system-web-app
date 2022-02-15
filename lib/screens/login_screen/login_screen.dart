import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:my_store_system_app/components/custom_container_button.dart';
import 'package:my_store_system_app/components/custom_form_field.dart';
import 'package:my_store_system_app/screens/home/home_module.dart';
import 'package:my_store_system_app/screens/sign_up/sign_up_module.dart';
import 'package:my_store_system_app/styles/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> images = [
    'assets/images/food1.jpg',
    'assets/images/food2.jpg',
    'assets/images/food3.jpeg',
    'assets/images/food4.jpg',
    'assets/images/food5.jpg'
  ];

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
              'assets/images/food5.jpg',
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
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.2),
                                    BlendMode.dstATop),
                                image: const AssetImage(
                                  'assets/images/food5.jpg',
                                )),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(60),
                                bottomLeft: Radius.circular(60)),
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
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                bottomRight: Radius.circular(60)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 20),
                                child: Text(
                                  'Meu Sistema',
                                  style: nameApp,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                elevation: 12,
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                                child: Text(
                                              'Already Members',
                                              style: appNameSubTitle,
                                            )),
                                            Flexible(
                                                child: GestureDetector(
                                                    onTap: () {},
                                                    child: Text(
                                                      'Need Help?',
                                                      style: buttonServiceBlack,
                                                    )))
                                          ],
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.black26,
                                        thickness: 0.5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                                        child: CustomFormField(
                                          text: 'email',
                                          initialValue: '',
                                          hint: 'Enter your email',
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
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                        child: CustomFormField(
                                          text: 'password',
                                          initialValue: '',
                                          hint: 'Enter your password',
                                          enabled: true,
                                          action: TextInputAction.send,
                                          type: TextInputType.text,
                                          validator: FormBuilderValidators.compose([
                                            FormBuilderValidators.required(context),
                                          ]),
                                          obscureText: true,
                                          maxLines: 1,
                                        ),
                                      ),
                                      CustomContainerButton(
                                        onPressed: () async {
                                          await Get.offAll(() => HomeModule());
                                        },
                                        widget: Text('SIGN IN', style: cardDashboardTitle,),
                                        color: estelColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                                child: Text('Don\'t have an account yet?', style: textWhite12,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 2, right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => SignUpModule());
                                  },
                                    child: Text(
                                  'Ask us how you could be our partner.',
                                  style: buttonColorEstel12,
                                )),
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
    );
  }
}
