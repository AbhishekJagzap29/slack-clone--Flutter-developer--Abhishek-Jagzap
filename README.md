# 📱 Real-Time Channel Messaging App (Flutter)

A Slack-like real-time messaging mobile application built using **Flutter** and **Riverpod**, focusing on clean architecture, real-time UI updates, and polished user experience.

---

## 🎥 Demo Proof 

For Demo We Used Tech Stack 
- Flutter
- Dart
- Riverpod
- Material 3
- Intl (for time formatting)

### 📌 Recording Covers
- Login with username & password
- Mocked login with username & password validation  
- Password must be **at least 4 characters** (shorter passwords are treated as invalid)  
- Viewing channel list (`#general`, `#random`)
- Opening a channel
- Sending messages
- Receiving messages in real-time (mocked)
- Switching between channels and observing message isolation
- Real-time UI updates and auto-scroll behavior

> 📎 **Demo Recording Link:**  
> https://drive.google.com/file/d/11AsQN9vuF8_BqauSE2QiJaP425MvldPg/view?usp=drivesdk



## 🚀 Features

### 🔐 Authentication & Workspace

- Mocked login with username & password validation  
- Password must be **at least 4 characters** (shorter passwords are treated as invalid)  
- Automatically joins a **default workspace** after successful login


### 📂 Channel List
- Predefined channels:
  - `#general`
  - `#random`
- Active channel highlight
- Unread message count per channel
- Workspace name displayed at the top

### 💬 Channel Chat
- Real-time message stream (mocked using Riverpod)
- Optimistic UI updates on sending messages
- Auto-scroll to latest message
- Message bubble UI with:
  - Sender name
  - Timestamp
  - Text message
- Emoji reactions (👍 ❤️ 😂 🔥)
- - WhatsApp-style inline reply with reply preview and pinned replied message

- Messages isolated per channel

### 🎨 UI / UX
- Slack-like layout and spacing
- Keyboard-safe input bar
- Empty and error states
- Smooth scrolling with `ListView.builder`
- **System-based Dark Mode** (Material 3)

### 🧠 State Management
- **Riverpod** for state management
- Clear separation of:
  - UI
  - State
  - Business logic

---

## 🛠 Tech Stack

- Flutter
- Dart
- Riverpod
- Material 3
- Intl (for time formatting)

---

## 📁 Project Structure

lib/
├── models/
│ └── message.dart
├── providers/
│ └── chat_provider.dart
├── services/
│ └── chat_service.dart
├── screens/
│ ├── login_screen.dart
│ ├── channel_list_screen.dart
│ └── chat_screen.dart
└── main.dart


---

## 🧪 Mocked Backend

This project uses a **mocked backend**:
- No real server or database
- Real-time behavior simulated using streams
- Designed to focus on UI, state synchronization, and architecture

---

## 🌗 Dark Mode

- Supports **system-based dark mode**
- Automatically adapts based on device theme
- Implemented using Material 3 `ColorScheme`

---

## ▶️ How to Run

```vscode
flutter pub get
flutter run
