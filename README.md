# 🛡️ SACH Mobile App

A **user-facing mobile application** for a decentralized FIR (First Information Report) registration system. This project enables citizens to securely log, track, and manage police reports on an immutable blockchain ledger, ensuring transparency and accountability in the justice system.

---

## 🤔 What Does This Project Do?

Filing a police report can sometimes be a tedious and opaque process. **SACH** (which means "Truth") modernizes and secures this process by utilizing blockchain technology. 

This application serves as the frontend citizen portal that can:

- 📝 **Securely File an FIR** — Log incident details directly to a tamper-proof decentralized network.
- 📍 **Tag Incident Locations** — Use built-in interactive maps to pinpoint exactly where an incident occurred.
- 🔍 **Track Report Status** — Monitor the real-time progress of filed FIRs from submission to resolution.
- 🔔 **Receive Alerts** — Get updates and notifications regarding active reports and local safety alerts.
- 👤 **Manage Citizen Profile** — Maintain personal details securely for quick report filing.

By leveraging a decentralized ledger, the system ensures that **once an FIR is filed, it cannot be tampered with, altered, or unlawfully deleted**.

---

## ✨ Key Features

This application isn't just a standard form-filler. It comes packed with robust features:

| Feature | What It Means |
|---------|---------------|
| **Blockchain Integration** | FIR data is anchored to a decentralized ledger for immutable record-keeping |
| **Interactive Mapping** | Integrates OpenStreetMap data to accurately capture incident coordinates |
| **State Management** | Efficient, reactive UI using dedicated stores for FIRS, user profiles, and alerts |
| **Multi-Language Support** | Built-in localization architecture to serve a diverse citizen base |
| **Cross-Platform** | A single codebase compiled for Android and iOS devices natively |
| **Privacy Controls** | Dedicated settings to manage how user data and notifications are handled |

---

## 🏗️ Tech Stack

| Technology | Purpose |
|-----------|---------|
| **Flutter (^3.11.0)** | UI toolkit for building natively compiled mobile applications |
| **Dart** | The primary programming language for Flutter |
| **flutter_map (^7.0.2)** | Highly customizable mapping widget for Flutter |
| **latlong2 (^0.9.1)** | Lightweight library for calculating map coordinates and distances |
| **Cupertino & Material Icons** | Native-looking UI components for both iOS and Android |
| **Blockchain** | Decentralized ledger backend for immutable FIR storage |

---

## 📁 Project Structure

```text
sach-mobile-app/
├── pubspec.yaml            # Project dependencies and configuration
├── analysis_options.yaml   # Flutter linting and code quality rules
├── android/                # Native Android configuration files
├── ios/                    # Native iOS configuration files
├── test/                   # Unit and widget tests
└── lib/                    # Main application code
    ├── main.dart           # The main application entry point
    ├── sach_route.dart     # Application routing and navigation logic
    ├── theme.dart          # Global app styling and color schemes
    ├── app_strings.dart    # Centralized text and localization strings
    ├── models/
    │   └── fir_model.dart  # Data shape for an FIR record
    ├── stores/             # State management
    │   ├── fir_store.dart
    │   ├── user_profile_store.dart
    │   ├── alert_store.dart
    │   └── locale_store.dart
    └── screens/            # UI Views
        ├── login_screen.dart
        ├── signup_screen.dart
        ├── dashboard_screen.dart
        ├── file_fir_screen.dart
        ├── fir_detail_screen.dart
        ├── my_firs_screen.dart
        ├── alerts_screen.dart
        ├── profile_screen.dart
        └── ...settings screens
```

*(Note: The `lib/` structure above is conceptually organized based on your project files for better readability).*

---

## 🚀 How to Set Up (Step by Step)

### Prerequisites

Make sure you have the following installed on your machine:
- **Flutter SDK** (Version 3.11.0 or higher) — [Download here](https://docs.flutter.dev/get-started/install)
- **Dart SDK** (Bundled with Flutter)
- **Android Studio** or **VS Code** (with Flutter/Dart extensions installed)

### 1. Clone this repository

```bash
git clone https://github.com/koisarux/sach-mobile-app.git
cd sach-mobile-app
```

### 2. Install dependencies

Fetch all the required Dart packages:
```bash
flutter pub get
```

### 3. Setup Native Environments (Optional but recommended)
- **For Android**: Ensure you have a valid Android Emulator running or a physical device connected via USB debugging.
- **For iOS**: Run `pod install` inside the `ios` directory (requires a Mac with Xcode).

### 4. Run the application

```bash
flutter run
```
This will compile the app and launch it on your connected device or emulator.

---

## 📱 Core Application Flows

| Flow | Description |
|--------|-------------|
| **Authentication** | Secure `signup_screen` and `login_screen` for citizen identity verification. |
| **Dashboard** | The central `dashboard_screen` providing a quick overview of active alerts and recent FIRs. |
| **FIR Management** | Navigate from `file_fir_screen` to submit a report, and `my_firs_screen` to view history. |
| **Settings** | Robust configurations via `privacy_settings_screen` and `notification_settings_screen`. |

---

## 📄 License

This project is currently marked as private (`publish_to: 'none'`). Please contact the repository owner for usage, contribution, or licensing details.
