# Real-Time Chat Application

A cross-platform real-time chat application built with Flutter and Firebase. This application allows users to communicate in real-time through a clean and intuitive interface.

---

## Features

- **Real-time messaging**: Instant message delivery using Firebase Realtime Database/Firestore
- **User authentication**: Secure login and registration system with Firebase Auth
- **Chat rooms**: Create and join different chat rooms
- **User status**: See who's online and active
- **Message history**: Access previous conversations
- **Cross-platform**: Works on iOS, Android, and potentially web platforms

---

## Tech Stack

### Frontend & App Development
- Flutter for cross-platform UI development
- Dart programming language
- Provider/Bloc (if applicable) for state management

### Backend & Services
- Firebase Authentication for user management
- Firebase Firestore/Realtime Database for message storage
- Firebase Cloud Functions (if applicable)
- Firebase Cloud Messaging for notifications

---

## Installation

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- Firebase account

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/TanmayLimje/chat_app.git
   cd chat_app
2. **Install dependencies**
   ```bash
   flutter pub get
3. **Run the application**
   ```bash
   flutter run


### Authentication

- Email/Password authentication
- Google Sign-In (if implemented)
- User profiles

### Database

- Users collection/node
- Chats collection/node
- Messages collection/node

---

## State Management

The app uses **[Provider/Bloc/GetX/Riverpod]** for state management to handle:

- User authentication state
- Chat room selection
- Message sending and receiving
- User online status

---

## Future Enhancements

- Message encryption for enhanced privacy
- File sharing capabilities
- Voice and video calling features
- Message reactions and replies
- User profiles with custom avatars
- Dark/Light theme toggle
- Group chat functionality
- Message search functionality
   cd chat_app
