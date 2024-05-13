void main(List<String> args) {
   List<String> formValues = List.filled(5, 'a');
  print("List of form values: $formValues");
   const constantValue = 'constant';
  List<String> constants = List.filled(3, constantValue);

  print("List of constants: $constants");

  final defaultSize = 50.0;
  List<double> widgetSizes = List.filled(4, defaultSize);
  print("List of widget sizes: $widgetSizes");

    final defaultLength = 10;
  List<int> stringLengths = List.filled(6, defaultLength);
  print("List of string lengths: $stringLengths");
}