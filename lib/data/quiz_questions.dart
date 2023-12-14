import 'package:adv_basics/models/questions.dart';

const questions = [
  Questions(
    'What are the main building blocks of Flutter UIs?',
    ['Widgets', 'Blocks', 'Components', 'Functions'],
  ),
  Questions(
    'How are flutter UIs are build?',
    [
      'By combining widgets in code',
      'By combining widgets in visual code editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android studio for Android'
    ],
  ),
  Questions(
    'What\'s the purpose of a StatafullWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data'
    ],
  ),
  Questions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    ['StatelessWidget', 'StatefulWidget', 'Both', 'None of the above'],
  ),
  Questions(
    'What happens if you change data in StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated'
    ],
  ),
  Questions(
    'Which function is responsible for starting the program?',
    [
      'main()',
      'runApp()',
      'run()',
      'flutter()'
    ],
  )
];
