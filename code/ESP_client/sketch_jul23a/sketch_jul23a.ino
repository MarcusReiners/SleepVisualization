#include <WiFi.h>
#include <HTTPClient.h>

const char* ssid = "MagentaWLAN-395D";
const char* password = "57274849890517591979";
const char* firebaseApiKey = "AIzaSyB6Fc_ArXX5lmFJcUYDEnoX5drJcrpvChQ";
const char* databaseUrl = "https://visualizing-sleep-default-rtdb.firebaseio.com/";

const size_t bufferSize = 128; // Adjust the size according to your data requirements
char payloadBuffer[bufferSize];

void setup() {
  Serial.begin(115200);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi...");
  }
  Serial.println("Connected to WiFi!");

  // Download data from Firebase and set it as the value of the BLE characteristic
  downloadDataFromFirebase();
}

void loop() {
  // Your main code here
}

void downloadDataFromFirebase() {
  if (WiFi.status() == WL_CONNECTED) {
    String url = String(databaseUrl) + "/SKQ1210908001/0/value.json?auth=" + firebaseApiKey;

    HTTPClient http;
    http.begin(url);

    int httpCode = http.GET();

    if (httpCode == HTTP_CODE_OK) {
      // Get the payload as a String
      String payload = http.getString();

      // Limit the payload size to the buffer size minus 1 (for null terminator)
      size_t payloadSize = min(payload.length(), bufferSize - 1);

      // Copy the payload to the buffer
      payload.toCharArray(payloadBuffer, payloadSize + 1);

      Serial.write(payloadBuffer, payloadSize); // Use Serial.write() to print binary data

      // Set the value of the BLE characteristic
      pCharacteristic->setValue(reinterpret_cast<uint8_t*>(payloadBuffer), payloadSize);
    } else {
      Serial.println("Error downloading data from Firebase.");
    }

    http.end();
  }
}