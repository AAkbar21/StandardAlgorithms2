class SortingAndSearching {
    func Bubblesort(data: [Int]) -> [Int] {
      var new_data = data
      let data_last = data.count - 1
      var swapped = true
      while swapped == true {
        swapped = false
        for i in 0..<data_last {
          if new_data[i] > new_data[i+1] {
            let temp = new_data[i]
            new_data[i] = new_data[i+1]
            new_data[i+1] = temp
            swapped = true}
        }
      }
      return new_data
    }

    func MergeSort(data: [Int]) -> [Int] {
      var new_data = data
      
      if new_data.count > 1 {
        let mid = new_data.count / 2
        var left = Array(new_data[0..<mid])
        var right = Array(new_data[mid..<new_data.count])

        left = MergeSort(data: left)
        right = MergeSort(data: right)

        var i = 0 // left iterator
        var j = 0 // right iterator
        var k = 0 // full iterator

        while i < left.count && j < right.count {
          if left[i] <= right[j] {
            new_data[k] = left[i]
            i += 1
          }
          else {
            new_data[k] = right[j]
            j += 1
          }
          k += 1
        }

        while i < left.count {
          new_data[k] = left[i]
          i += 1
          k += 1
        }

        while j < right.count {
          new_data[k] = right[j]
          j += 1
          k += 1
        }
        

      }
      return new_data
    }

    func linearSearch(_ data: [Int], _ criteria: Int) -> Int {
      var found = 0
      for i in data {
        if data[i] == criteria {
          found = data[i]
          print("Found \(criteria) at position \(i+1) in the array ")
          break
        }
      }
      return found
    }
    
    func binarySearch<T:Comparable>(_ inputArr:Array<T>, _ searchItem: T) -> Int? {
        var lowerIndex = 0
        var upperIndex = inputArr.count - 1

        while (true) {
            let currentIndex = (lowerIndex + upperIndex)/2
            if(inputArr[currentIndex] == searchItem) {
                return currentIndex
            } else if (lowerIndex > upperIndex) {
                return nil
            } else {
                if (inputArr[currentIndex] > searchItem) {
                    upperIndex = currentIndex - 1
                } else {
                    lowerIndex = currentIndex + 1
                }
            }
        }
    }


}
