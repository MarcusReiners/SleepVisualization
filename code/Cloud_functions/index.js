/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */
const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.setSleepDuration = functions.database
    .ref("/AndroidSKQ1210908001")
    .onWrite((change, context) => {
      if (!change.after.exists()) {
        return null;
      }

      const newValue = change.after.val(); // Extract the new value
      const date = "2023-10-16";
      const sleepDuration = parseInt(newValue[date]["0"]["value"]);

      const keys = Object.keys(newValue[date]);

      const promises = [];

      let lightSleep = 0;
      let deepSlepp = 0;
      let rem = 0;
      let awake = 0;

      for (const key of keys) {
        const sleepType = newValue[date][key]["sleepType"];
        const childValue = parseInt(newValue[date][key]["value"]);
        if (sleepType == "HealthDataType.SLEEP_LIGHT") {
          lightSleep += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_DEEP") {
          deepSlepp += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_REM") {
          rem += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_AWAKE") {
          awake += childValue;
        }
      }

      const sleepQuality = parseInt(((sleepDuration-awake)/sleepDuration)*100);

      const sleepQualityEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/SleepQuality`)
          .set(sleepQuality)
          .catch((error) => {
            console.error("Error setting SleepQuality:", error);
          });

      promises.push(sleepQualityEntry);

      const sleepDurationEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/SleepDuration`)
          .set(sleepDuration)
          .catch((error) => {
            console.error("Error setting SleepDuration:", error);
          });

      promises.push(sleepDurationEntry);

      const lightSleepEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/LightSleep`)
          .set(lightSleep)
          .catch((error) => {
            console.error("Error setting LightSleep:", error);
          });

      promises.push(lightSleepEntry);

      const deepSleepEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/DeepSleep`)
          .set(deepSlepp)
          .catch((error) => {
            console.error("Error setting DeepSleep:", error);
          });

      promises.push(deepSleepEntry);

      const remSleepEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/REM`)
          .set(rem)
          .catch((error) => {
            console.error("Error setting REM:", error);
          });

      promises.push(remSleepEntry);

      const awakeEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/Awake`)
          .set(awake)
          .catch((error) => {
            console.error("Error setting Awake:", error);
          });

      promises.push(awakeEntry);

      return Promise.all(promises);
    });


