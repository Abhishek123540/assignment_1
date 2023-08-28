import 'package:flutter/material.dart';

import '../widgets/selectable_button.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  var _selectedCoffee = true;
  var _selectedBusiness = true;
  var _selectedHobbies = true;
  var _selectedFriendship = true;
  var _selectedMovies = true;
  var _selectedDinning = true;
  var _selectedDating = true;
  var _selectedMatrimony = true;
  var _slider = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select Your Availability',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              DropdownMenu(
                initialSelection: 1,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                width: MediaQuery.of(context).size.width * 0.92,
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: 1,
                    label: 'Available | Hey Let Us Connect',
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  DropdownMenuEntry(
                    value: 2,
                    label: 'Away | Stay Discreet And Watch',
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  DropdownMenuEntry(
                    value: 3,
                    label: 'Busy | Do Not Disturb | Will Catch Up Later',
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  DropdownMenuEntry(
                    value: 4,
                    label: 'SOS | Emergency! Need Assistance! Help',
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                'Add Your Status',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: 2,
                initialValue: 'Hi community! I am open to new connections',
                style: const TextStyle(fontWeight: FontWeight.normal),
                maxLength: 250,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 5),
              const Text(
                'Select Hyper local Distance',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Slider(
                value: _slider.toDouble(),
                divisions: 100,
                max: 100,
                min: 1,
                label: _slider.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _slider = value.toInt();
                  });
                },
                inactiveColor: Colors.grey,
                activeColor: const Color(0xff1e2839),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const Text(
                    '1 Km',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.65),
                  const Text(
                    '100 Km',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Select Purpose'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectableButton(
                    selected: _selectedCoffee,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedCoffee = !_selectedCoffee;
                      });
                    },
                    child: const Text('Coffee'),
                  ),
                  SelectableButton(
                    selected: _selectedBusiness,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedBusiness = !_selectedBusiness;
                      });
                    },
                    child: const Text('Business'),
                  ),
                  SelectableButton(
                    selected: _selectedHobbies,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedHobbies = !_selectedHobbies;
                      });
                    },
                    child: const Text('Hobbies'),
                  ),
                  SelectableButton(
                    selected: _selectedFriendship,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedFriendship = !_selectedFriendship;
                      });
                    },
                    child: const Text('Friendship'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SelectableButton(
                    selected: _selectedMovies,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedMovies = !_selectedMovies;
                      });
                    },
                    child: const Text('Movies'),
                  ),
                  SelectableButton(
                    selected: _selectedDinning,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedDinning = !_selectedDinning;
                      });
                    },
                    child: const Text('Dinning'),
                  ),
                  SelectableButton(
                    selected: _selectedDating,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedDating = !_selectedDating;
                      });
                    },
                    child: const Text('Dating'),
                  ),
                  SelectableButton(
                    selected: _selectedMatrimony,
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.white;
                          }
                          return const Color(
                              0xff1e2839); // defer to the defaults
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xff1e2839);
                          }
                          return null; // defer to the defaults
                        },
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedMatrimony = !_selectedMatrimony;
                      });
                    },
                    child: const Text('Matrimony'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xff1e2839),
                      ),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Save & Explore'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
