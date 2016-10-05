package main

import "fmt"


func main() {
        fmt.Printf("\nThis program tells you if a year is a leap year or not.\n\n")
        fmt.Printf("What is the year in question?\n")
        var year int
        n, err := fmt.Scanf("%d\n", &year)
        if err != nil || n != 1 {
            // handle invalid input
                fmt.Println(n, err)
                }

        var isLeap bool = true

                fmt.Printf("%d is a leapyear\n", 4 % 100)

        if year % 4 == 0 {
                // do nothing
        } else {
                isLeap = false
        }

        if year % 100 == 0 {
                // do nothing
        } else {
                isLeap = false
        }
        if year % 400 == 0 {
                // do nothing
        } else {
                isLeap = false
        }

        if isLeap {
                fmt.Printf("%d is a leapyear\n", year)
        } else {
                fmt.Printf("%d is NOT a leapyear\n", year)
        }

        //fmt.Printf("%.0f\n", year)
        //year = year + 1
        //fmt.Printf("you typed in: %.0f\n", year)
}
