package hamming
import ("errors")

func Distance(a, b string) (int, error) {
    if len(a) != len(b) {
		return 0, errors.New("[ERROR] The strings must have the same length.")
	}
    
	var result int = 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			result = result + 1
		}
	}

	return result, nil
}
