import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class GymFormPage extends StatefulWidget {
  const GymFormPage({super.key});

  @override
  _GymFormPageState createState() => _GymFormPageState();
}

class _GymFormPageState extends State<GymFormPage> {
  final _formKey = GlobalKey<FormState>();

  bool declareDisability = false;
  String membershipType = '1 month';
  List<String> memberships = ['1 month', '3 months', '6 months', '12 months'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFfbc2eb),
                Color.fromARGB(255, 186, 162, 242),
                Color.fromARGB(255, 177, 195, 245),
                Color.fromARGB(255, 188, 163, 247)
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: LayoutBuilder(builder: (context, constraints) {
              return Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth < 600 ? 0 : 50,
                    right: constraints.maxWidth < 600 ? 0 : 50,
                    top: constraints.maxWidth < 600 ? 0 : 30),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Column(
                    children: [
                      Expanded(
                        flex: constraints.maxWidth < 600 ? 3 : 4,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Image.asset(
                                'assets/images/logo.png',
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Text(
                              'Mantripukri, Imphal East',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              color: Colors.red.shade700,
                              padding: const EdgeInsets.all(12),
                              child: const Text(
                                'GYM MEMBERSHIP APPLICATION FORM',
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    constraints.maxWidth < 600 ? 15 : 30),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildSectionHeader('Personal Details'),
                                  _buildTextField('Surname'),
                                  _buildTextField('First name'),
                                  _buildTextField('Date of Birth'),
                                  _buildTextField('Address'),
                                  _buildTextField('Postcode'),
                                  _buildTextField('Home number'),
                                  _buildTextField('Mobile number'),
                                  _buildTextField('Email'),
                                  Row(
                                    children: [
                                      const Text(
                                          'Do you declare a disability?'),
                                      Checkbox(
                                        value: declareDisability,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            declareDisability = value ?? false;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  _buildTextField('If yes, please specify'),
                                  _buildTextField('Name of Trainer'),
                                  Row(
                                    children: [
                                      Expanded(
                                        child:
                                            _buildTextField('Morning Timing'),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child:
                                            _buildTextField('Evening Timing'),
                                      ),
                                    ],
                                  ),
                                  _buildSectionHeader(
                                      'Emergency Contact Details'),
                                  _buildTextField('Contact name'),
                                  _buildTextField('Contact number'),
                                  _buildTextField('Relationship'),
                                  _buildSectionHeader('Month Membership'),
                                  DropdownButtonFormField(
                                    value: membershipType,
                                    items: memberships.map((String category) {
                                      return DropdownMenuItem(
                                          value: category,
                                          child: Text(category));
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        membershipType = newValue.toString();
                                      });
                                    },
                                  ),
                                  _buildSectionHeader('Type of Membership'),
                                  CheckboxListTile(
                                    title: const Text('Gym (Personal)'),
                                    value: false,
                                    onChanged: (newValue) {},
                                  ),
                                  CheckboxListTile(
                                    title: const Text('Gym (General)'),
                                    value: false,
                                    onChanged: (newValue) {},
                                  ),
                                  CheckboxListTile(
                                    title: const Text('Aerobic'),
                                    value: false,
                                    onChanged: (newValue) {},
                                  ),
                                  CheckboxListTile(
                                    title: const Text('Zumba'),
                                    value: false,
                                    onChanged: (newValue) {},
                                  ),
                                  _buildSectionHeader(
                                      'Physical Activity Readiness Questionnaire (PARQ)'),
                                  ...List.generate(10, (index) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Text('Question $index')),
                                        Checkbox(
                                            value: false,
                                            onChanged: (newValue) {}),
                                        Checkbox(
                                            value: false,
                                            onChanged: (newValue) {}),
                                      ],
                                    );
                                  }),
                                  _buildTextField('Doctor\'s name'),
                                  _buildTextField('Surgery name'),
                                  _buildTextField('Surgery address'),
                                  _buildSectionHeader(
                                      'Declaration of consent to exercise'),
                                  _buildTextField('Signature'),
                                  _buildTextField('Date'),
                                  _buildTextField('Name'),
                                  _buildTextField('Relationship'),
                                  _buildTextField('Signature'),
                                  _buildTextField('Date'),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        // Process data
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: const Text(
                                        'Submit',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.red.shade700,
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
