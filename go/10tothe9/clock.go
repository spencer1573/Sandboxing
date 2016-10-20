package main

import (
        "fmt"
        "time"
        "math"
)

/*
func add10tothe9(clockA time.Time) time.Time {
        fmt.Printf("how many hours do you want to add?")
        var hour int = 1
        hour, err := fmt.Scanf("%d\n", &hour)
        if err != nil || hour != 1 {
            // handle invalid input
                fmt.Println(hour, err)
        }
        return clockA.Add( time.Duration(hour) * time.Second )
}
*/
func add10tothe9(clockA time.Time) time.Time {
        fmt.Printf("adding 10 ^ 9 seconds to the year 2000...\n")
        //var seconds int64 = 1000000000
        var seconds float64 = math.Pow(10,9) 
        return clockA.Add( time.Duration(seconds) * time.Second )
}

func clockInit() time.Time {
        clock := time.Date(
                2000, 1, 1, 0, 0, 0, 0, time.UTC)
        return clock
}

func menu() {
        fmt.Printf("1. minute add/subtract\n")
        fmt.Printf("2. hour add/subtract\n")
        fmt.Printf("3. print current time\n")
        fmt.Printf("4. quit\n")
}

func main() {
        fmt.Printf("this program calculates a giga second.\n\n")
        //menu()

        //var hour int = 9
        //var min int = 0

        p := fmt.Println
        var clockA time.Time = clockInit()
        p(clockA)
        clockA = add10tothe9(clockA)
        p(clockA)

        //printTime(hour, min)
        /*
        n, err := fmt.Scanf("%d\n", &year)
        if err != nil || n != 1 {
            // handle invalid input
                fmt.Println(n, err)
                }
        */

}
