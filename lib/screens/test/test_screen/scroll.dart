import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScrollWidget extends StatelessWidget {
  static const String routeName = "TestScrollWidget";

  static CupertinoPage page() {
    return CupertinoPage(
      name: routeName,
      key: const ValueKey(routeName),
      child: TestScrollWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              primary: false,
              physics: ClampingScrollPhysics(),
              children: [
                Card(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Text(
                      'Hello, inner World!',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Text(
                      'Hello, inner World!',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Hello, inner World!',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Hello, World!',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
