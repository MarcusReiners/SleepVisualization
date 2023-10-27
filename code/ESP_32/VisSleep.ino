#include <WiFi.h>
#include <TFT_eSPI.h>
#include <HTTPClient.h>
#include <ArduinoJson.h>

// Wi-Fi credentials
const char* ssid = "MagentaWLAN-395D";
const char* password = "57274849890517591979";

// Firebase credentials
const char* firebaseApiKey = "AIzaSyB6Fc_ArXX5lmFJcUYDEnoX5drJcrpvChQ";
const char* databaseUrl = "https://visualizing-sleep-default-rtdb.firebaseio.com/";

// TFT display configuration
TFT_eSPI tft;

// LED pin configuration
const int redPin = 12;    // Red LED pin
const int greenPin = 13;  // Green LED pin
const int bluePin = 14;   // Blue LED pin

// Function prototypes
void setup();
void loop();
void drawSleepStageBar(int displayWidth, int totalDuration, int displayHeight, int& yOffset, int duration, uint16_t color);
void flameEffect(int redPin, int greenPin, int bluePin, int ledBrightness, int qualityVal);

void setup() {
  Serial.begin(115200);
  tft.init();
  tft.setRotation(0);

  // Initialize LED pins
  pinMode(redPin, OUTPUT);
  pinMode(greenPin, OUTPUT);
  pinMode(bluePin, OUTPUT);
}

void loop() {
  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi!");

  // Fetch sleep stage data from Firebase
  String url = String(databaseUrl) + "/AndroidSKQ1210908001/data.json?auth=" + firebaseApiKey;

  HTTPClient http;
  http.begin(url);

  int httpCode = http.GET();

  if (httpCode == HTTP_CODE_OK) {
    String response = http.getString();

    // Parse the JSON response
    DynamicJsonDocument jsonDoc(1024); // Adjust the size as needed
    DeserializationError error = deserializeJson(jsonDoc, response);

    if (!error) {
      JsonObject sleepData = jsonDoc.as<JsonObject>();

      // Clear the display
      tft.fillScreen(TFT_BLACK);

      // Sleep stage durations (in minutes)
      int awakeDuration = sleepData["Awake"].as<int>();
      int deepSleepDuration = sleepData["DeepSleep"].as<int>();
      int lightSleepDuration = sleepData["LightSleep"].as<int>();
      int remDuration = sleepData["REM"].as<int>();
      int awakeningsAmount = sleepData["Awakenings"].as<int>();
      int sleepEfficiency = sleepData["SleepEfficiency"].as<int>();
      int totalDuration = awakeDuration + deepSleepDuration + lightSleepDuration + remDuration;
      
      int ledBrightness = map(totalDuration, 0, 480, 255, 0);  // Map duration to brightness
      ledBrightness = constrain(ledBrightness, 0, 255);

      // Display settings
      int displayWidth = tft.width();
      int displayHeight = tft.height();
      int yOffset = displayHeight; // Start from the bottom of the screen

      // Bar colors
      uint16_t awakeColor = TFT_WHITE;
      uint16_t deepSleepColor = TFT_DARKGREEN;
      uint16_t lightSleepColor = tft.color565(144, 238, 144); // Adjust the color
      uint16_t remColor = TFT_GREEN;

      // Draw bars representing sleep stages
      drawSleepStageBar(displayWidth, totalDuration, displayHeight, yOffset, deepSleepDuration, deepSleepColor);
      drawSleepStageBar(displayWidth, totalDuration, displayHeight, yOffset, remDuration, remColor);
      drawSleepStageBar(displayWidth, totalDuration, displayHeight, yOffset, lightSleepDuration, lightSleepColor);
      drawSleepStageBar(displayWidth, totalDuration, displayHeight, yOffset, awakeDuration, awakeColor);

      // Healthy Values
      float lightSleepHealthy = 24.8;
      float deepSleepHealthy = 34.7;
      float remSleepHealthy = 40.5;
      float healthyAwakenings = 25;
      float healthyDuration = 450;
      float healthyEfficiency = 90;

      // Weights Stages
      float w1 = 0.2;
      float w2 = 0.4;
      float w3 = 0.4;

      float sleepStagesDeviation = w1 * abs(lightSleepHealthy - (lightSleepDuration/totalDuration)*100) + w2 * abs(deepSleepHealthy - (deepSleepDuration/totalDuration)*100) + w3 * abs(remSleepHealthy - (remDuration/totalDuration)*100);

      float efficiencyDeviation = abs(sleepEfficiency - healthyEfficiency);

      float awakeningsDeviation = abs(awakeningsAmount - healthyAwakenings);

      float durationDeviation = abs(healthyDuration - totalDuration);

      // Weights Quality
      float v1 = 0.35;
      float v2 = 0.35;
      float v3 = 0.2;
      float v4 = 0.1;

      float sleepQuality = v1 * sleepStagesDeviation + v2 * durationDeviation + v3 * awakeningsDeviation + v4 * efficiencyDeviation;

      sleepQuality = 100 - constrain(sleepQuality, 0, 100);

      Serial.println(sleepStagesDeviation);
      Serial.println(efficiencyDeviation);
      Serial.println(awakeningsDeviation);
      Serial.println(durationDeviation);
      
      Serial.println(sleepQuality);

      analogWrite(bluePin, 0);

      int qualityVal = 100 - sleepQuality;

      // Flame effect animation
      flameEffect(redPin, greenPin, bluePin, ledBrightness, qualityVal);

    } else {
      Serial.print("Failed to parse JSON response. Error: ");
      Serial.println(error.c_str());
    }
  } else {
    Serial.print("Failed to retrieve data from Firebase. HTTP Code: ");
    Serial.println(httpCode);
  }

  // Delay for visualization
  delay(1000);
}

// This function draws a bar representing a sleep stage on the TFT display.
  // The position and height of the bar are determined based on the total sleep duration and the duration of the specific sleep stage.
  // Arguments:
  // - displayWidth: The width of the TFT display.
  // - totalDuration: The total duration of all sleep stages.
  // - displayHeight: The height of the TFT display.
  // - yOffset: The y-coordinate of the bottom of the bar. This value is updated after each bar is drawn.
  // - duration: The duration of the specific sleep stage being represented.
  // - color: The color of the bar.
void drawSleepStageBar(int displayWidth, int totalDuration, int displayHeight, int& yOffset, int duration, uint16_t color) {
  int barHeight = (duration / static_cast<double>(totalDuration)) * static_cast<double>(displayHeight) + 1; // Assuming 24 hours in a day
  tft.fillRect(0, yOffset - barHeight, displayWidth, barHeight, color);
  Serial.println("Drawing sleep stage bar");
  yOffset -= barHeight;
}

// This function creates a flame effect animation on the RGB LED.
  // The flame effect is created by varying the brightness of the red and green LED pins, with a small amount of flickering.
  // Arguments:
  // - redPin: The pin connected to the red component of the RGB LED.
  // - greenPin: The pin connected to the green component of the RGB LED.
  // - bluePin: The pin connected to the blue component of the RGB LED.
  // - ledBrightness: The initial brightness of the LED.
  // - qualityVal: A value representing the quality of sleep, used to adjust the flickering effect.
void flameEffect(int redPin, int greenPin, int bluePin, int ledBrightness, int qualityVal) {
  for (int i = 0; i <= 100; i++) {
    for(int i = 0; i <= 10; i++) {
      int flicker = random(qualityVal);
      // Ensure the LED stays on for a minimum duration
      analogWrite(redPin, ledBrightness - flicker);
      analogWrite(greenPin, ledBrightness - flicker);
      analogWrite(bluePin, 0); // Adjust the blue component as needed
      delay(200);
    }

    // Introduce randomness for flickering
    if (random(1000) > (100 - qualityVal) * 10) {
      analogWrite(redPin, 0);
      analogWrite(greenPin, 0);
      analogWrite(bluePin, 0);
      delay(random(100)); // Vary the delay for a more natural flicker
    }
  }
}
