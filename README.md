# Dev Text - Flutter Small Project

Welcome to Dev Text, a Flutter project that can be run on version 3.10.5 of Flutter. This project is designed to run on both web and mobile app platforms, providing a basic example to get you started with development.

## Getting Started

These instructions will guide you through setting up the project on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have Flutter 3.10.5 installed on your machine.

### Installation

1. Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/tauqeer-cs/dev_text.git

2. Code Structure
The project's code is organized as follows:

lib/: Contains the main Dart code for the app.
main.dart: Entry point of the app.

pages/: Contains the top-level design of the widget for both web and app.

inner_views/: Contains smaller widgets that are related to the main pages but serve as sub-designs.
theme/: Contains files related to theme settings.

util/: Contains utility files, including ConstantUtils:

ConstantUtils.dart: Includes variables like numberOfItemsToShowInList and webMinHeight, allowing customization of the number of values in the list and the web design's height.
widgets/: Contains custom widgets used throughout the app.

3. Running on Mobile
Follow these steps to run the project on both Android and iOS devices.

Connect your physical device or use an emulator/simulator.

Run the following command to install the required dependencies:
run
flutter pub get
For Android flutter run
For iOS flutter run ios

4. Running on Web
Follow these steps to run the project on a web browser.

Make sure you have enabled web support for Flutter:
flutter config --enable-web

Run the following command to build the web version of the app:
flutter build web

Serve the built files using a local development server. Navigate to the build/web directory and run:
python -m http.server

Access the app by opening a web browser and navigating to http://localhost:8000.

Support
If you have any questions or need assistance, please feel free to contact us at tauqeer99@gmail.com.

Contributing
Feel free to contribute to this project by opening issues and pull requests. Your contributions are greatly appreciated!

License
This project is licensed under the MIT License - see the LICENSE file for details.
