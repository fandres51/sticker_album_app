import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text(
                  'Sliver App Bar',
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.grey),
                centerTitle: true,
                floating: true,
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 180),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  delegate: SliverChildListDelegate([
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                    const Placeholder(),
                  ]),
                ),
              )
            ],
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 15),
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          )),
    );
  }
}
