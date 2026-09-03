# Calculator Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Recreate the Calculator activity from reference slides into `lib/calculator.dart`, connect it via `lib/main.dart`, and verify with automated tests.

**Architecture:** Separate the Calculator UI and calculation logic into a standalone `StatefulWidget` in `lib/calculator.dart`. Mount it inside `lib/main.dart` as the root home widget.

**Tech Stack:** Flutter / Dart (SDK ^3.13.0)

## Global Constraints
- AppBar title: "Murillo Activity 5"
- Background: LinearGradient from Colors.purple.shade100 to Colors.blue.shade100
- Operator buttons: '+' (Colors.green), '-' (Colors.red), '*' (Colors.orange), '÷' (Colors.blue)
- Result format: res.toStringAsFixed(2)
- Zero division error message: "Cannot divide by zero"

---

### Task 1: Create Calculator Widget (`lib/calculator.dart`)

**Files:**
- Create: `lib/calculator.dart`

- [ ] **Step 1: Write `lib/calculator.dart`**
  Implement `Calculator` `StatefulWidget`, `_CalculatorState`, `num1Controller`, `num2Controller`, `result`, `calculate(String operator)`, `buildOperatorButton(String operator, Color color)`, and `build` method matching the slides.

- [ ] **Step 2: Run `dart analyze` to verify syntax and types**

---

### Task 2: Connect Calculator in `lib/main.dart`

**Files:**
- Modify: `lib/main.dart`

- [ ] **Step 1: Update `lib/main.dart`**
  Import `calculator.dart`, set `home: const Calculator()`, and remove the starter counter boilerplate.

- [ ] **Step 2: Run `dart analyze` to verify clean analysis**

---

### Task 3: Create Widget Tests & Update Smoke Test

**Files:**
- Create: `test/calculator_test.dart`
- Modify: `test/widget_test.dart`

- [ ] **Step 1: Write `test/calculator_test.dart`**
  Cover addition, subtraction, multiplication, division, and division by zero.

- [ ] **Step 2: Update `test/widget_test.dart`**
  Verify app launches and displays the calculator.

- [ ] **Step 3: Run `flutter test` to verify all tests pass**

---

### Task 4: Final Verification

- [ ] **Step 1: Run `dart analyze`**
- [ ] **Step 2: Run `flutter test`**

