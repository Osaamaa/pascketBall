import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pascketball/cubit/counter_state.dart';

import 'cubit/counter_cubit.dart';

void main() {
  runApp(_PointsCounterState());
}

class _PointsCounterState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Coounter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'A', buttonNumber: 1);
                        },
                        child: const Text("add 1 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'A', buttonNumber: 2);
                        },
                        child: const Text("add 2 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'A', buttonNumber: 3);

                        },
                        child: const Text("add 3 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'B', buttonNumber: 1);

                        },
                        child: const Text("add 1 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'B', buttonNumber: 2);
                        },
                        child: const Text("add 2 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          // minimumSize: Size(150, 50)
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).Teamincrement(team: 'B', buttonNumber: 3);
                        },
                        child: const Text("add 3 point",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: const Size(150, 50)),
              onPressed: () {},
              child: const Text("Reset",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
          ],
        ),
      );
    }, listener: (context, state) {

    });
  }
}
