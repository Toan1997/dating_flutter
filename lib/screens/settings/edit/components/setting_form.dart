import 'dart:ffi';

import 'package:dating_flutter/constants.dart';
import 'package:flutter/material.dart';
import '../../../../components/custom_suffix_icon.dart';

class SettingForm extends StatefulWidget{
  @override
  State<SettingForm> createState() => _SettingFormState();
}
class _SettingFormState extends State<SettingForm> {
  final _formKey = GlobalKey<FormState>();
  late String fullname;
  late String email;
  late int phone;
  late String about;
  late String interest;
  late String address;
  final List<String> genders = [
    'Male',
    'Female',
  ];

  final List<int> ages = [18,19,20];

  String? genderValue;
  int? ageValue;
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Form(
       key: _formKey,
       child: Column(
          children: [
            buildFieldName(),
            SizedBox(height: 15),
            buildFieldEmail(),
            SizedBox(height: 15),
            buildFieldPhone(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  // optional flex property if flex is 1 because the default flex is 1
                  flex: 1,
                  child: buildDropdownGender()
                ),
                SizedBox(width: 10.0),
                Expanded(
                  // optional flex property if flex is 1 because the default flex is 1
                  flex: 1,
                  child: buildDropdownAge()
                ),
              ],
            ),
            SizedBox(height: 15),
            buildFieldAbout(),
            SizedBox(height: 15),
            buildFieldInterest(),
            SizedBox(height: 15),
            buildFieldAddress()
          ],
        ),
     ),
   );
  }

  DropdownButtonFormField<String> buildDropdownGender() {
    return DropdownButtonFormField<String>(
          value: genderValue,
          icon: Icon(Icons.arrow_drop_down),
          elevation: 16,

          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              genderValue = value!;
            });
          },
          items: genders.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(
            labelText: "Gender",
            hintText: "Select gender",
            enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: kPrimaryColor, width: 2),
                borderRadius: BorderRadius.circular(30)
            ),
          )
        );
  }

  DropdownButtonFormField<int> buildDropdownAge() {
    return DropdownButtonFormField<int>(
        value: ageValue,
        icon: Icon(Icons.arrow_drop_down,),
        elevation: 16,
        onChanged: (int? value) {
          // This is called when the user selects an item.
          setState(() {
            ageValue = value!;
          });
        },
        items: ages.map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
        decoration: InputDecoration(
          labelText: "Age",
          hintText: "Select age",
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30)
          ),
        )
    );
  }
  TextFormField buildFieldName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => fullname = newValue!,
      decoration: InputDecoration(
          labelText: "Full Name",
          hintText: "Enter full name",
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: kPrimaryColor, width: 2),
            borderRadius: BorderRadius.circular(30)
          ),
      )
    );
  }
  TextFormField buildFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: kPrimaryColor, width: 2),
            borderRadius: BorderRadius.circular(30)
        ),
        suffixIcon: CustomSuffixIcon(iconData: Icons.email_outlined)
      ),
    );
  }
  TextFormField buildFieldPhone() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = 0,
      decoration: InputDecoration(
          labelText: "Phone Number",
          hintText: "Enter phone number",
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30)
          ),
          suffixIcon: CustomSuffixIcon(iconData: Icons.call)
      ),
    );
  }
  TextFormField buildFieldAbout() {
    return TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        onSaved: (newValue) => about = newValue!,
        decoration: InputDecoration(
          labelText: "About",
          hintText: "Enter about",
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30)
          ),
            suffixIcon: CustomSuffixIcon(iconData: Icons.edit_sharp)
        )
    );
  }
  TextFormField buildFieldInterest() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) => interest = newValue!,
        decoration: InputDecoration(
          labelText: "Interest",
          hintText: "Enter interest",
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30)
          ),
            suffixIcon: CustomSuffixIcon(iconData: Icons.edit_sharp)
        )
    );
  }
  TextFormField buildFieldAddress() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) => address = newValue!,
        decoration: InputDecoration(
          labelText: "Address",
          hintText: "Enter address",
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(30)
          ),
            suffixIcon: CustomSuffixIcon(iconData: Icons.location_on)
        ),
    );
  }

}
