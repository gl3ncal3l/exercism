package twofer

import "fmt"

func ShareWith(name string) string {
    var result string = "One for you, one for me."
    if(name != ""){
        result = fmt.Sprintf("One for %s, one for me.", name)
    }
	return result
}
