This is the algorithm we will follow for sending GPS Data to Server from iOS APP.

We will create 3 settings in APP:
1. Minimum Distance Travelled = 10meters
2. Minimum Duration Spend = 20 minutes
3. Periodic Update Schedule = 8 hrs

Each time the user changes location, iOS fires a event with old location and new location. We will set this event to fire when the relative position of user changes by 10meters.
>From this event we will compute the time spent at the last location if it is less than 20 minutes we will drop/discard/ignore this data.
If it is more than 20 minutes we will upload it to server.
We will also record the new location in Memory as "lastRecordedLocation with a timestamp"

Every 8 hours (so 3 times within 24 hours) we will explicitly check the users location and calculate the duration spent at that location with reference to "lastRecordedLocation"  and send a update to the server.


On the server side before I invoke the heroku BRMA call I will sort the data by duration-spent that way all the highest duration entries will be at the top.
