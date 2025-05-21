# Uber Clone Driver App

A mobile application built with Flutter for drivers in a ride-sharing service, similar to Uber. This app allows drivers to register, log in, and manage their ride-sharing activities.

![App Logo](assets/images/uberexec.png)

## Features

- **Authentication System**
  - Login and registration functionality for drivers
  - Firebase Authentication for user management
  - Profile photo upload to Firebase Storage
  - Validation for email, password, and other required fields

- **Driver Information Management**
  - Collects and stores driver details including:
    - Personal information (name, phone, email)
    - Vehicle details (model, color, license plate number)
    - Profile photo

- **Database Integration**
  - Uses Firebase Realtime Database to store driver information
  - Includes a blocking system where admins can block drivers if needed

- **Location Services**
  - Implements Google Maps for location-based functionality
  - Requests location permissions from users
  - Initial map configuration

- **UI Components**
  - Dark theme with black background
  - Loading dialog for asynchronous operations
  - Form validation with error messages
  - Image picker for profile photos

- **Utilities**
  - Network connectivity checking
  - Snackbar notifications for user feedback

## Technologies Used

- Flutter
- Firebase (Authentication, Realtime Database, Storage)
- Google Maps API
- Dart
- Image Picker
- Connectivity Plus

## Installation

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK
- Android Studio / Xcode
- Firebase account
- Google Maps API key

### Setup

1. **Clone the repository**
   ```
   git clone https://github.com/yourusername/drivers_app.git
   cd drivers_app
   ```

2. **Install dependencies**
   ```
   flutter pub get
   ```

3. **Firebase Configuration**
   - Create a new Firebase project
   - Add Android and iOS apps to your Firebase project
   - Download and add the `google-services.json` to the Android app directory
   - Download and add the `GoogleService-Info.plist` to the iOS app directory
   - Enable Authentication, Realtime Database, and Storage in Firebase console

4. **Google Maps API Key**
   - Obtain a Google Maps API key from the Google Cloud Console
   - Add the API key to `lib/global/global_var.dart`

5. **Run the app**
   ```
   flutter run
   ```

## Project Structure

```
lib/
├── authentication/
│   ├── login_screen.dart
│   └── signup_screen.dart
├── global/
│   └── global_var.dart
├── methods/
│   └── common_methods.dart
├── pages/
│   └── dashboard.dart
├── widgets/
│   └── loading_dialog.dart
├── firebase_options.dart
└── main.dart
```

## Usage

1. **Registration**
   - New drivers can register by providing personal details, vehicle information, and uploading a profile photo

2. **Login**
   - Registered drivers can log in using their email and password

3. **Dashboard**
   - After successful authentication, drivers are directed to the dashboard (currently in development)

## Screenshots

The app includes the following screens:
- Login Screen
- Registration Screen
- Dashboard (in development)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any inquiries, please contact the administrator at andrew.acheampong@orlikdesignlab.com
