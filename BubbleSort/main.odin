package main

import "core:fmt"

main :: proc() {
    someNumbers : [50]int;

    for i := 0; i < len(someNumbers); i += 1 {
        fmt.println("Numbers: ", someNumbers)
        if i % 2 == 0 {
            someNumbers[i] = i * 251;
        } else if i % 3 == 0 {
            someNumbers[i] = i * -14;
        } else if i % 5 == 0 {
            someNumbers[i] = i * 9;
        } else {
            someNumbers[i] = i * i * -2;
        }
        fmt.println("Numbers: ", someNumbers)
    }

    min := 150
    cmp := 0
    for i := 0; i < len(someNumbers); i += 1 {
        cmp = someNumbers[i];

        if (cmp < min) {
            min = cmp;
            fmt.println("New min: ", min);
        }
    }
    fmt.println("Final min: ", min)

    max := 150
    cmp = 0
    for i := 0; i < len(someNumbers); i += 1 {
        cmp = someNumbers[i];

        if (max < cmp) {
            max = cmp;
            fmt.println("New max: ", max);
        }
    }
    fmt.println("Final max: ", max);

    sum := 0;
    for i := 0; i < len(someNumbers); i += 1 {
        sum += someNumbers[i];
    }
    avg := f64(sum) / f64(len(someNumbers));
    fmt.println("Average: ", avg, "Sum: ", sum);


    fmt.println("\nBefore: ", someNumbers)
    for i := 0; i < len(someNumbers); i += 1 {
        for j := 0; j < len(someNumbers) - i - 1; j += 1 {
            if someNumbers[j] > someNumbers[j + 1] {
                temp := someNumbers[j];
                someNumbers[j] = someNumbers[j + 1];
                someNumbers[j + 1] = temp;
            }
        }
    }
    fmt.println("\nSorted: ", someNumbers);
}