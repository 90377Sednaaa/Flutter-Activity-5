# Calculator Feature Design Specification

Recreating the Flutter Calculator activity from the reference slides into an isolated, reusable widget file.

## 1. Context & Objectives
* **Goal:** Recreate the Calculator app according to the reference document (`reference/main.dart - Tagged.pdf`, pages 1–5).
* **Separation:** Keep the calculator implementation in a dedicated file (`lib/calculator.dart`), distinct from `lib/main.dart`.
* **Visual Fidelity:** Replicate the gradient background, custom operator button styles, input field styling, and elevated result display container.
* **Customization:** Set the AppBar title to `"Murillo Activity 5"` as specified by the user.

## 2. Architecture & Components

### A. [`lib/calculator.dart`](file:///c:/Users/Lean/Documents/Flutter%20projects/Calculator/calculator/lib/calculator.dart)
A `StatefulWidget` named `Calculator` with state `_CalculatorState`:
* **Controllers & State:**
  * `TextEditingController num1Controller`
  * `TextEditingController num2Controller`
  * `String result = ""`
* **Operations:**
  * `void calculate(String operator)`:
    * Extracts doubles from input controllers using `double.tryParse(...) ?? 0`.
    * Implements arithmetic via switch:
      * `+`: addition
      * `-`: subtraction
      * `*`: multiplication
      * `÷`: division, with guard `if (num2 != 0)` otherwise sets `result = "Cannot divide by zero"`
    * On success: sets `result = res.toStringAsFixed(2)` and triggers `setState()`.
* **Button Helper:**
  * `Widget buildOperatorButton(String operator, Color color)` returning an `ElevatedButton`:
    * Vertical padding: 18, Horizontal padding: 24
    * `shape`: `RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))`
    * `backgroundColor`: `color`
    * `Text`: White, bold, font size 20
* **Widget Tree:**
  * `Scaffold` with `AppBar` (title: `"Murillo Activity 5"`, `backgroundColor: Colors.blue`).
  * `body`: `Container` with `padding: EdgeInsets.all(20)` and `LinearGradient(colors: [Colors.purple.shade100, Colors.blue.shade100], begin: Alignment.topLeft, end: Alignment.bottomRight)`.
  * Child: `Column(crossAxisAlignment: CrossAxisAlignment.stretch)` containing:
    1. Number 1 `TextField` (controller: `num1Controller`, filled white, radius 12 border, numeric keyboard).
    2. `SizedBox(height: 15)`.
    3. Number 2 `TextField` (controller: `num2Controller`, filled white, radius 12 border, numeric keyboard).
    4. `SizedBox(height: 20)`.
    5. `Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly)` with:
       * `+` in `Colors.green`
       * `-` in `Colors.red`
       * `*` in `Colors.orange`
       * `÷` in `Colors.blue`
    6. `SizedBox(height: 25)`.
    7. Result card `Container` (padding: 20, white background, radius 12, `BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(2, 4))`).
       * `Text("Result: $result", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple), textAlign: TextAlign.center)`.

### B. [`lib/main.dart`](file:///c:/Users/Lean/Documents/Flutter%20projects/Calculator/calculator/lib/main.dart)
* Clean up the default template counter code.
* Import `calculator.dart`.
* Configure `MyApp` with `home: const Calculator()`.

## 3. Verification Plan
* Run `dart analyze` to ensure 0 static errors, warnings, or lint issues.
* Create unit/widget tests in `test/calculator_test.dart` to verify:
  * Initial rendering of input fields, buttons, and result container.
  * Correct arithmetic operations (+, -, *, ÷).
  * Division by zero shows `"Cannot divide by zero"`.
* Execute `flutter test` to ensure all tests pass.

