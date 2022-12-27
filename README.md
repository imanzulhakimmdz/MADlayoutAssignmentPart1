# 📝 Assignment 3 Part 1

## :smile: Student details

>##### Name: Iman Zulhakim bin Mohamad Dzain
>##### Matric Number: 1918335
>##### Mobile Application Development Sem 1 2022/2023
>##### Kulliyyah of ICT, International Islamic University Malaysia

## :pen: About the assignment

Create a Grid Layout of IoT (Internet of Things) devices in a particular house. Each device will have an icon on its own. When the icon is pressed, toggle the image and toggle the text underneath between on and off.

## :bulb: What have been done?

> #### 1) main.dart

1. A (.dart) file named _main.dart_ has been created by default. **StatefulWidget** is used.
2. Create several **Container** widgets for teh purpose of designing the application.
3. The last container is saved to call the Grid() constructor from the different (.dart) file.

> #### 2) grid.dart

1. A (.dart) file named _grid.dart_ is created and **StatefulWidget** is used. Constructor's name was <ins>Grid</ins>.
2. The widget **GridView.count** is used, with 2D array of widgets with a fixed number of tiles in the cross axis.
3. Create five **Container** widgets for the devices such as home Wi-Fi, home TV, gate lamp at the outdoor of the house, power plug, and air conditioner. Mainly, the widget **ToggleButtons** is used with the corresponding selection state of each toggle button and the callback that is called when a button is tapped.

## :copyright: References

- [Icons class](https://api.flutter.dev/flutter/material/Icons-class.html)
- [Create a grid list](https://docs.flutter.dev/cookbook/lists/grid-lists)
- [ToggleButtons class](https://api.flutter.dev/flutter/material/ToggleButtons-class.html)
- [Thiana19 GitHub](https://github.com/Thiana19/Flutter-Layout-Assignment-Part-1)