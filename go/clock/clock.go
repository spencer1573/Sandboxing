package main

import (
        "fmt"
        "time"
)

/*
func addZeros(time int) {
        fmt.Printf("%d \n", )
}
*/
/*
func printTime(hour int, min int) int{
        //fmt.Printf("%d:%d \n", hour.Hour(), min)
        p := fmt.Println

        now := time.Now()
        p(now)
        //oneHour := now.Date()
        p(then)
        //var theMin int64 =  2
        //var convertMin int64 = theMin * 100000000000
        p(then.Add(3 * time.Second ))
        return 0
}
*/

func addHour(clockA time.Time) time.Time {
        fmt.Printf("how many hours do you want to add?\n")
        var hour int = 1
        hour, err := fmt.Scanf("%d\n", &hour)
        if err != nil || hour != 1 {
            // handle invalid input
                fmt.Println(hour, err)
        }
        return clockA.Add(time.Duration(hour) * time.Hour )
}

func clockInit() time.Time {
        clock := time.Date(
                2009, 11, 17, 20, 34, 58, 651387237, time.UTC)
        return clock
}

func menu() {
        fmt.Printf("1. minute add/subtract\n")
        fmt.Printf("2. hour add/subtract\n")
        fmt.Printf("3. print current time\n")
        fmt.Printf("4. quit\n")
}

func main() {
        fmt.Printf("\nThis Program adds minutes and hours to clock\n\n")
        fmt.Printf("These are your options:\n\n")
        menu()

        //var hour int = 9
        //var min int = 0

        p := fmt.Println
        var clockA time.Time = clockInit()
        p(clockA)
        clockA = addHour(clockA)
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
