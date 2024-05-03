# curved_navigation_bar 

A Flutter package for easy implementation of curved navigation bar.

[Check here](https://pub.dev/packages/curved_navigation_bar)

## Menu screen

<img src="screen1.png width=50%>

**Add dependency** 

```
dependencies:
  curved_navigation_bar: ^1.0.3 #latest version
```

**Import Package**

`import 'package:curved_navigation_bar/curved_navigation_bar.dart';`

**Use**

```
Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: <Widget>[
      Icon(Icons.add, size: 30),
      Icon(Icons.list, size: 30),
      Icon(Icons.compare_arrows, size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: Container(color: Colors.blueAccent),
)
```


### Attributes 

- `items`: List of Widgets
- `index`: index of NavigationBar, can be used to change current index or to set initial index
- `color`: Color of NavigationBar, default Colors.white
- `buttonBackgroundColor`: background color of floating button, default same as color attribute
- `backgroundColor`: Color of NavigationBar's background, default Colors.blueAccent
- `onTap`: Function handling taps on items
- `animationCurve`: Curves interpolating button change animation, default Curves.easeOutCubic
- `animationDuration`: Duration of button change animation, default Duration(milliseconds: 600)
- `height`: Height of NavigationBar, min 0.0, max 75.0
- `letIndexChange`: Function which takes page index as argument and returns bool. If function returns false then page is not changed on button tap. It returns true by default


### Change page programmatically 


``` 
//State class
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        ));
  }
  ```

<img src="screen2.png width=50%>

<img src="screen3.png width=50%>

## Profile screen with a Card

<img src="screen4.png width=50%>