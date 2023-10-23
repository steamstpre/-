import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class LoginByPhoneWidget extends StatelessWidget {
  const LoginByPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 15.0, right: MediaQuery.of(context).size.height / 3.5),
          child: Text(
            'Phone number',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        PhoneFormField(
          key: Key('phone-field'),
          controller: null, // controller & initialValue value
          initialValue: null, // can't be supplied simultaneously
          shouldFormat: true, // default
          defaultCountry: IsoCode.US, // default
          decoration: InputDecoration(
              border: OutlineInputBorder() // default to UnderlineInputBorder(),
              ),
          validator:
              PhoneValidator.validMobile(), // default PhoneValidator.valid()
          isCountryChipPersistent: false, // default
          isCountrySelectionEnabled: true, // default
          countrySelectorNavigator: CountrySelectorNavigator.bottomSheet(),
          showFlagInInput: true, // default
          flagSize: 16, // default
          autofillHints: [AutofillHints.telephoneNumber], // default to null
          enabled: true, // default
          autofocus: false, // default
          onSaved: null, // default null
          onChanged: null, // default null
          // ... + other textfield params
        ),
      ],
    );
  }
}
