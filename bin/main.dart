import 'dart:developer';

import 'package:insertion_sort_algorithm/insertion_sort_algorithm.dart'
    as insertion_sort_algorithm;

main(List<String> arguments) {
  List<int> arrayOne = [5, 1, 6, 2, 4, 3];

  int currentElement;
  int previousElement;
  int positionOfCurrentElement;  
  int positionOfPreviousElement;
  int arraySize = arrayOne.length;
  for (int i = 0; i < arraySize; i++) {
    //counter<arraySize-1:Do this to loop over the index of each element
    for (int counter = 0; counter < arraySize - 1; counter++) {
      previousElement =arrayOne.elementAt(counter);
      positionOfPreviousElement=arrayOne.indexOf(previousElement);
      positionOfCurrentElement=counter+1;
      currentElement=arrayOne.elementAt(positionOfCurrentElement);
     
      if (currentElement < previousElement) {
        swapElement(arrayOne, currentElement, previousElement,
            positionOfCurrentElement, positionOfPreviousElement);
      }
    }
    print("This is the array after sorting $arrayOne");
  }
}

void swapElement(List<int> array, int currentElement, int previousElement,
    int currentElementPosition, int previousElementPosition) {
  var tmp = array[currentElementPosition];
  array[currentElementPosition] = array[previousElementPosition];
  array[previousElementPosition] = tmp;
}
