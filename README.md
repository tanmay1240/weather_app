# weather_app

# 🌦️ Flutter Weather App

This is a simple weather application built using Flutter. It fetches real-time weather data based on the city name input and displays temperature, weather conditions, and other related information.

---

## 📡 API Used

We use the **OpenWeatherMap API** to fetch weather data:

🔗 [https://openweathermap.org/current](https://openweathermap.org/current)

Screenshots of the outputs are :
![Output](https://github.com/tanmay1240/weather_app/blob/main/Screenshot%202025-06-24%20074027.png)]
![Output](https://github.com/tanmay1240/weather_app/blob/main/Screenshot%202025-06-24%20074043.png)]
![Output](https://github.com/tanmay1240/weather_app/blob/main/Screenshot%202025-06-24%20074140.png)]
Screenshot of the part of code in excecution :
![Output](https://github.com/tanmay1240/weather_app/blob/main/Screenshot%202025-06-24%20074757.png)]

---

## 🔄 JSON Parsing

The weather data is fetched in JSON format. A sample of the returned JSON looks like this:

```json
{
  "weather": [
    {
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 28.55,
    "feels_like": 30.01,
    "humidity": 40
  },
  "name": "Delhi"
}

