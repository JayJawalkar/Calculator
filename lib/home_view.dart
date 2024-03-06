import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int x = 0;
  int y = 0;
  num z = 0;
  final Textcontroller1 = TextEditingController();
  final Textcontroller2 = TextEditingController();

  void add() {
    setState(() {
      z = num.tryParse(Textcontroller1.text)! +
          num.tryParse(Textcontroller2.text)!;
    });
  }

  void substract() {
    setState(() {
      z = num.tryParse(Textcontroller1.text)! -
          num.tryParse(Textcontroller2.text)!;
    });
    
  }

  void multiply() {
    setState(() {
      z = num.tryParse(Textcontroller1.text)! *
          num.tryParse(Textcontroller2.text)!;
    });
  }

  void divide() {
    setState(() {
      z = num.tryParse(Textcontroller1.text)! /
          num.tryParse(Textcontroller2.text)!;
    });
  }

  @override
  void initState() {
   

    Textcontroller1.text = x.toString();
    Textcontroller2.text = y.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                      setState(() {
                      Textcontroller1.clear();
                      
                    });  
                  },
                  child: TextField(
                    
                    decoration: const InputDecoration(
                        hintText: "Enter Number ", border: OutlineInputBorder()),
                    keyboardType: const TextInputType.numberWithOptions(),
                    controller: Textcontroller1,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextField(
                    decoration: const InputDecoration(
                        hintText: "Enter Number ",
                        border: OutlineInputBorder()),
                    keyboardType: const TextInputType.numberWithOptions(),
                    controller: Textcontroller2),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                z.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        add();
                      },
                      child: const Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        substract();
                      },
                      child: const Icon(CupertinoIcons.minus),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        multiply();
                      },
                      child: const Icon(CupertinoIcons.multiply),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        divide();
                      },
                      child: const Icon(CupertinoIcons.divide),
                    ),
                    FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            x = 0;
                            y = 0;
                            z = 0;
                            Textcontroller1.clear();
                            Textcontroller2.clear();
                          });
                        },
                        child: const Text('Clear'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
