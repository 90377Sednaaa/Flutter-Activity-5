<div align="center">

# 📱 Murillo Activity 5 - Flutter Calculator

A clean, modern, and beautifully styled Flutter Calculator application built as part of Activity 5 coursework. Features smooth gradient aesthetics, custom rounded operator controls, safe arithmetic error handling, and elevated result presentation.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-lightgrey?style=for-the-badge)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

<br/>

<img src="screenshots/calculator_preview.png" alt="Calculator App Preview" width="320" style="border-radius: 16px; box-shadow: 0 10px 30px rgba(0,0,0,0.15);"/>

</div>

---

## ✨ Features

- **🎨 Modern Pastel Gradient UI**: Built with an elegant `LinearGradient` blending soft purple and blue hues (`Colors.purple.shade100` to `Colors.blue.shade100`).
- **🔢 Two Number Inputs**: Clean rounded `TextField` inputs with numeric keyboard configuration.
- **⚡ Custom Operator Actions**:
  - `+` Addition (Vibrant Green)
  - `-` Subtraction (Bold Red)
  - `*` Multiplication (Warm Orange)
  - `÷` Division (Crisp Blue)
- **🛡️ Robust Error Handling**: Division by zero is safely caught and gracefully informs the user with `"Cannot divide by zero"`.
- **✨ 3D Elevated Result Card**: The calculation result is showcased inside an elevated, rounded container with realistic drop shadow effects and bold deep-purple typography.
- **🧱 Modular Architecture**: Complete separation of UI & logic in [`lib/calculator.dart`](lib/calculator.dart) from the app entrypoint in [`lib/main.dart`](lib/main.dart).
- **🧪 Comprehensive Test Suite**: 100% automated test coverage verifying all mathematical operations, UI component rendering, and edge cases.

---

## 📂 Project Structure

```text
calculator/
├── lib/
│   ├── calculator.dart     # Standalone Calculator StatefulWidget & business logic
│   └── main.dart           # App entrypoint and MaterialApp root
├── test/
│   ├── calculator_test.dart# Unit & widget tests for calculator operations and UI
│   └── widget_test.dart    # Smoke test for app initialization
├── screenshots/
│   └── calculator_preview.png # Application UI screenshot
├── pubspec.yaml            # Project dependencies and configuration
└── README.md               # Project documentation
```

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `^3.13.0` or higher)
- [Dart SDK](https://dart.dev/get-dart)
- An emulator, physical device, or desktop environment

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/90377Sednaaa/Flutter-Activity-5.git
   cd Flutter-Activity-5
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

---

## 🧪 Running Tests

Execute the automated test suite to verify UI rendering and arithmetic calculations:

```bash
flutter test
```

All 7 test cases (addition, subtraction, multiplication, division, zero-division handling, and smoke tests) will execute and pass.

---

## 👤 Author

**Murillo**
* GitHub: [@90377Sednaaa](https://github.com/90377Sednaaa)

