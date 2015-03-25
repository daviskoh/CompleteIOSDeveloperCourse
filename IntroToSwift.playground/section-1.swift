/**
 * Loops ***********************************************
 */


/**
 * For Loops *
 */

for var i = 1; i <= 10; i++ {
  println(i * 5)
}

var arr = [1,2,3,4,5]

// NOTE: i is immutable value
for n in arr {
  println(n)
}

// allows for arr mutability
for (index, n) in enumerate(arr) {
  arr[index] = n + 2
}
arr

/**
 * While Loops *
 */

var i = 0
while i <= 10 {
  println(i * 2)
  i++
}

var array = [1,2,3,4,5,6], j = 0
while j < array.count {
  array[j]--
  j++
}
array


/**
 * Is Prime
 * 
 * prime - num that is greater than 1 that has NO pos divisors other than 1 & itself
 */

func isPrime(n: Int) -> Bool {
  if n < 2 {
    return false
  }
  
  // iterate through all nums from 2 to itself
  // if any n % num == 0 then return false
  for i in 2..<n {
    if n % i == 0 {
      return false
    }
  }
  
  return true
}

// 2 3 5 7 11 13 17

isPrime(2)
isPrime(3)
isPrime(5)
isPrime(7)
isPrime(11)

isPrime(4)
isPrime(6)
isPrime(9)