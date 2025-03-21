
// Find the Duplicates in an Array

class Task1 {

    func task1() {
        let result = findDuplicates([1, 2, 3, 4, 2, 5, 3])
        print(result.map { "\($0), " }) // Output: 2, 3
    }

    func findDuplicates(arr: Array<Int>) -> [Int] {
        let seen: [Int] = [Int]()
        let duplicates: [Int] = [Int]()
        for num in arr {
            if (seen.filter(num)) {
                duplicates.append(num)
            }
        }
        for num in arr {
            if (!seen.filter(num)) {
                seen.append(num)
            }
        }
        return Array(duplicates)
    }
}
