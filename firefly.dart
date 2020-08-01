library firefly;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;


// ! .
part './start.dart';

// ! views
part './views/settings.dart';

// ! src
part './src/rerenderController.dart';
part './src/saveData.dart';


// ! Style 
part './style/colors.dart';
part './style/themes.dart';


// ! Widgets

part './widgets/optionSelector.dart';
part './widgets/themeSelector.dart';
part './widgets/settingsButton.dart';

// * Icons 
part './widgets/icons/plain.dart';
part './widgets/icons/button.dart';

// * Shapes 
part './widgets/shapes/circle.dart';
part './widgets/shapes/line.dart';

// * Layouts 
part './widgets/layouts/blank.dart';

// * Text 
part './widgets/text/bold.dart';
part './widgets/text/plain.dart';
part './widgets/text/title.dart';
part './widgets/text/light.dart';

// * utils 
part './widgets/utils/containers.dart';

// * inputs 
part './widgets/inputs/pillbutton.dart';

