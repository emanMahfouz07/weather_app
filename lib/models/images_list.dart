String imagesList(String weatherStatus) {
  if (weatherStatus == "Sunny") {
    return 'assets/images/Sun.png';
  } else if (weatherStatus == "Clear") {
    return 'assets/images/clear.png';
  } else if (weatherStatus == "Cloudy" || weatherStatus == "Partly cloudy") {
    return 'assets/images/Clouds.png';
  } else if (weatherStatus == "Overcast") {
  } else if (weatherStatus == "Patchy light rain" ||
      weatherStatus == "Light rain" ||
      weatherStatus == "Moderate rain" ||
      weatherStatus == "Patchy rain possible" || weatherStatus == "Heavy rain") {
    return 'assets/images/Day_Rain.png';
  } else if (weatherStatus == "light snow" ||
      weatherStatus == "Snow" ||
      weatherStatus == "Heavy snow" || weatherStatus == "Moderate snow" || weatherStatus == "Light snow") {
    return 'assets/images/Snow.png';
  } else if (weatherStatus == "Blizzard") {
  } else if (weatherStatus == "Fog") {
  } else if (weatherStatus == "Moderate rain at times") {
  }  else if (weatherStatus == "Heavy rain") {}

  return 'assets/images/Image.png';
}
