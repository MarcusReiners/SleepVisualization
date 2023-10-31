/**
 * Cloud Function: setSleepDuration
 *
 * This function triggers on any write
 * event to the specified database reference.
 * It calculates and sets various sleep-related
 * metrics for the specified user
 * (identified by the unique ID: 'AndroidSKQ1210908001')
 * based on the new data written to the database.
 *
 * The following metrics are calculated and set in the database:
 * 2. Sleep Duration: The total duration of sleep.
 * 3. Awakenings: The number of times the user woke up.
 * 4. Light Sleep: The duration of light sleep.
 * 5. Deep Sleep: The duration of deep sleep.
 * 6. REM (Rapid Eye Movement) Sleep: The duration of REM sleep.
 * 7. Awake: The duration spent awake.
 *
 * These metrics are stored in the following database structure:
 * /DeviceID/data/<MetricName>
 *
 * @param {Object} change - The delta representing the changes to the data.
 * @param {Object} context - The context in which the event occurred.
 *
 * @returns {Promise} A promise that will be resolved once all
 * metrics have been set in the database.
 */
const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.setSleepData = functions.database
    .ref("Your DeviceID")
    .onWrite((change, context) => {
      if (!change.after.exists()) {
        return null;
      }

      const newValue = change.after.val(); // Extract the new value
      const date = new Date();
      const day = date.getDate();
      const month = date.getMonth()+1;
      const year = date.getFullYear();

      const fullDate = `${year}-${month}-${day}`;


      const sleepDuration = parseInt(newValue[fullDate]["0"]["value"]);

      const keys = Object.keys(newValue[fullDate]);

      const promises = [];

      let lightSleep = 0;
      let deepSleep = 0;
      let rem = 0;
      let awake = 0;
      let awakeningAmount = 0;
      let sleepCycles = 0;

      for (const key of keys) {
        const sleepType = newValue[fullDate][key]["sleepType"];
        const childValue = parseInt(newValue[fullDate][key]["value"]);
        if (sleepType == "HealthDataType.SLEEP_LIGHT") {
          lightSleep += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_DEEP") {
          deepSleep += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_REM") {
          if(childValue >= 5)
          rem += childValue;
        } else if (sleepType == "HealthDataType.SLEEP_AWAKE") {
          awakeningAmount += 1;
          awake += childValue;
        }
      }

      const sleepAwakeningsEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/Awakenings`)
          .set(parseInt(awakeningAmount))
          .catch((error) => {
            console.error("Error setting Awakening amount:", error);
          });

      promises.push(sleepAwakeningsEntry);

      const lightSleepEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/LightSleep`)
          .set(lightSleep)
          .catch((error) => {
            console.error("Error setting LightSleep:", error);
          });

      promises.push(lightSleepEntry);

      const deepSleepEntry = admin.database()
          .ref(`/AndroidSKQ1210908001/data/DeepSleep`)
          .set(deepSleep)
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


