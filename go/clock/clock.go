package main

import "fmt"

func addHour() {
}

func printTime(hour int, min int) int{
        fmt.Printf("%d:%d \n", hour, min)
        return 0
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
        var hour int = 12
        var min int = 0
        printTime(hour, min)
        /*
        n, err := fmt.Scanf("%d\n", &year)
        if err != nil || n != 1 {
            // handle invalid input
                fmt.Println(n, err)
                }
        */

}
