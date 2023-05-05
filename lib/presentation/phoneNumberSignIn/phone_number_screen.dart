import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_hub/application/signUp/signup_bloc.dart';
import 'package:food_hub/core/constants/loading.dart';
import 'package:food_hub/core/constants/motion_toast.dart';
import 'package:food_hub/services/authFunctions.dart';

class PhoneNumberVerifyScreen extends StatefulWidget {
  const PhoneNumberVerifyScreen({super.key});
  static String verify = '';

  @override
  State<PhoneNumberVerifyScreen> createState() =>
      _PhoneNumberVerifyScreenState();
}

class _PhoneNumberVerifyScreenState extends State<PhoneNumberVerifyScreen> {
  final _formKey = GlobalKey<FormState>();
  final countryPicker = const FlCountryCodePicker();
  var countryCode;
  String phoneNumber = '';
  final Authentication _auth = Authentication();
  String error = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, state) {
      return state.loading
          ? const Loading()
          : Scaffold(
              appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Phone Number Authentication',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Enter your Phone number to signin',
                        style: TextStyle(color: Colors.black87, height: 1.5),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Form(
                        key: _formKey,
                        child: UserNameFormField(
                          text: 'Phone Number',
                          keyboardTextType: TextInputType.phone,
                          icon: countrySelector(),
                          onchanged: (value) {
                            phoneNumber = value;
                          },
                          validator: (value) {
                            return (value!.length < 10 || value.length > 10)
                                ? 'Enter valid phone number'
                                : null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Column(
                        children: [
                          Center(
                              child: TextIconButton(
                                  text: 'Continue',
                                  icon: Icons.arrow_right_alt,
                                  color: const Color.fromRGBO(255, 219, 71, 1),
                                  ontap: () async {
                                    if (countryCode?.dialCode != null) {
                                      if (_formKey.currentState!.validate()) {
                                        BlocProvider.of<SignupBloc>(context)
                                            .add(
                                                const IsLoading(loading: true));
                                        phoneNumber =
                                            countryCode!.dialCode + phoneNumber;
                                        dynamic result =
                                            _auth.signInWithPhoneNumber(
                                                phoneNumber, context);
                                        if (result == null) {
                                          BlocProvider.of<SignupBloc>(context)
                                              .add(const IsLoading(
                                                  loading: false));
                                          error = 'Enter valid phone number';
                                          motionToastCustom(context, error,
                                              'https://assets10.lottiefiles.com/packages/lf20_QKRDTQ.json');
                                        }
                                      }
                                    } else {
                                      BlocProvider.of<SignupBloc>(context)
                                          .add(const IsLoading(loading: false));
                                      error = 'please enter a country code';
                                      motionToastCustom(context, error,
                                          'https://assets10.lottiefiles.com/packages/lf20_QKRDTQ.json');
                                    }
                                  })),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
    });
  }

  Container countrySelector() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              final code = await countryPicker.showPicker(context: context);
              setState(() {
                countryCode = code;
              });
            },
            child: Row(
              children: [
                Container(child: countryCode?.flagImage ?? null),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 254, 251, 251),
                  ),
                  child: Text(countryCode?.dialCode ?? "+1"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserNameFormField extends StatelessWidget {
  UserNameFormField({
    Key? key,
    required this.text,
    this.icon,
    this.keyboardTextType,
    this.onchanged,
    this.validator,
  }) : super(key: key);
  final String text;
  final Widget? icon;
  final TextInputType? keyboardTextType;
  Function(String)? onchanged;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged,
      keyboardType: keyboardTextType,
      maxLines: 1,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        prefixIcon: icon,
        labelText: text,
        labelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 128, 127, 127)),
        floatingLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
      ),
      validator: validator,
    );
  }
}

class TextIconButton extends StatelessWidget {
  const TextIconButton(
      {Key? key,
      required this.text,
      this.icon,
      required this.color,
      this.preIcon,
      required this.ontap})
      : super(key: key);
  final Widget? preIcon;
  final String text;
  final IconData? icon;
  final Color color;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 300,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: InkWell(
            onTap: ontap,
            //(() {
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ontap));
            // }),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: preIcon,
                ),
                Center(
                    child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(icon),
                )
              ],
            ),
          ),
        ));
  }
}
