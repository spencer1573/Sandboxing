package main

import (
        "fmt"
        "time"
)

func addHour() {
        
}
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
func clockInit() int {
        p := fmt.Println
        clock := time.Date(
                2009, 11, 17, 20, 34, 58, 651387237, time.UTC)
        p(clock)
        //return clock
        return 5
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
        clockInit()
        //printTime(hour, min)
        /*
        n, err := fmt.Scanf("%d\n", &year)
        if err != nil || n != 1 {
            // handle invalid input
                fmt.Println(n, err)
                }
        */

}
