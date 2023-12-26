String iconList(String weatherStatus) {
  if (weatherStatus == "Sunny") {
    return 'assets/images/base Sun.png';
  } else if (weatherStatus == "Clear") {
    return 'assets/images/clearSmall.png';
  } else if (weatherStatus == "Cloudy") {
    return 'assets/images/cloudy.png';
  } else if (weatherStatus == "Partly cloudy") {
    return 'assets/images/partly_cloudy.png';
  } else if (weatherStatus == "Overcast") {
  } else if (weatherStatus == "Patchy light rain" ||
      weatherStatus == "Light rain" ||
      weatherStatus == "Moderate rain" ||
      weatherStatus == "Patchy rain possible") {
    return 'assets/images/moderate_or_heavy_freezing_rain.png';
  } else if (weatherStatus == "light snow" ||
      weatherStatus == "Snow" ||
      
      weatherStatus == "Moderate snow" ||
      weatherStatus == "Light snow") {
    return 'assets/images/light_snow.png';
  } else if (weatherStatus == "Blizzard") {
  } else if (weatherStatus == "Fog") {
    return 'assets/images/fog.png';
  } else if (weatherStatus == "Moderate rain at times") {
  } else if (weatherStatus == "Heavy rain") {
    return 'assets/images/moderate_or_heavy_freezing_rain.png';
  }
  else if (weatherStatus == "Heavy snow" )
  {
    return 'assets/images/heavy_snow.png';
  }

  return 'assets/images/Image.png';
}
