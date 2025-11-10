import 'package:flutter/material.dart';
import 'package:local_provider/providers/backeetball_provider.dart';
import 'package:local_provider/widgets/basketwidget.dart';
import 'package:provider/provider.dart';

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("BasketBall"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    const Text("Team A", style: TextStyle(fontSize: 30)),
                    Consumer<BasketBallProvider>(
                      builder: (context, value, child) => Text(
                        "${value.countA}",
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                    BasketWidget(
                      title: "Add 1 Point",
                      onPressed: () {
                        context.read<BasketBallProvider>().add("A", 1);
                      },
                    ),
                    SizedBox(height: 10),
                    BasketWidget(
                      title: "Add 2 Points",
                      onPressed: () {
                        context.read<BasketBallProvider>().add("A", 2);
                      },
                    ),
                    SizedBox(height: 10),

                    BasketWidget(
                      title: "Add 3 Points",
                      onPressed: () {
                        context.read<BasketBallProvider>().add("A", 3);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: const VerticalDivider(color: Colors.grey, thickness: 2),
              ),
              Column(
                children: [
                  const Text("Team B", style: TextStyle(fontSize: 30)),
                  Consumer<BasketBallProvider>(
                    builder: (context, value, child) => Text(
                      "${value.countB}",
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                  BasketWidget(
                    title: "Add 1 Point",
                    onPressed: () {
                      context.read<BasketBallProvider>().add("B", 1);
                    },
                  ),
                  SizedBox(height: 10),

                  BasketWidget(
                    title: "Add 2 Points",
                    onPressed: () {
                      context.read<BasketBallProvider>().add("B", 2);
                    },
                  ),
                  SizedBox(height: 10),

                  BasketWidget(
                    title: "Add 3 Points",
                    onPressed: () {
                      context.read<BasketBallProvider>().add("B", 3);
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              context.read<BasketBallProvider>().reset();
            },
            child: const Text("Reset Game"),
          ),
        ],
      ),
    );
  }
}
