import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "home",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String? routeName = settings.name;
          return const SecondPage();
        });
      },
      routes: {
        "tip_Route": (context) => const TipRoute(text: "tip_Route"),
        "test_tip_Route": (context) => const TestTipRote(),
        "home": (context) => const MyHomePage(title: 'Flutter Demo Home Page')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return const TestTipRote();
                          },
                          fullscreenDialog: true));
                },
                child: const Text("open "
                    "new "
                    "route"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: const Center(
        child: Text("SecondPage Center"),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  const TipRoute({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("提示"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("args==$args"),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context, "返回值：1"),
                  child: const Text("返回"))
            ],
          ),
        ),
      ),
    );
  }
}

class TestTipRote extends StatelessWidget {
  const TestTipRote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // var result = await Navigator.push(context, MaterialPageRoute(
          //     builder: (context) {
          //   return const TipRoute(text: "参数提示xxx");
          // }
          //     ));
          // print("路由返回值：result = $result");
          await Navigator.pushNamed(context, "tip_Route", arguments: "参数提示xxx");
        },
        child: const Text("打开提示"),
      ),
    );
  }
}
