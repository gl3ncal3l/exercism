// Package weather provides a tool for forecasting the weather.
package weather

var (
    // CurrentCondition is a variable to set the current condition.
	CurrentCondition string
    // CurrentLocation is a variable to set the current location.
	CurrentLocation  string
)

// Forecast is a function that returns current conditions and weather status.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
