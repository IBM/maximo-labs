# Cisco Spaces Location Metrics 

Once the Cisco Spaces integration is set up and events are being processed successfully, IBM MAS Monitor begins to display real-time and historical **location-based metrics** fetched directly from Cisco Spaces.

These metrics provide deep insights into user presence, movement, and positioning within a mapped floor or space.

---

## Accessing Location Metrics

You can view metrics associated with a Cisco Spaces location using either of the following methods:

1. **Navigate via Floor Name Link**  
    - Go to the **Cisco Spaces Locations** table.  
    - Click on the **Floor Name** (which is a clickable link) for the subscribed location.

    ![Navigate 1](img/navigate1.png) 

2. **Search from Locations Tab**  
    - Go to the **Monitor → Locations** tab.  
    - Search for the location by its mapped **Floor Name**.
    - Select the matching location from the results to open the detailed location view.

     ![Navigate 1](img/navigate2.png)

Once inside the location page, view the **Metrics** section to see Cisco Spaces data.
     ![Metrics](img/metrics_section.png)
---

## Metrics Fetched from Cisco Spaces

Below is the list of key metrics received from Cisco Spaces.

### 1. `EVENT_TIMESTAMP`  
Represents the timestamp when the event is received.

![Event timestamp](img/event_timestamp.png) 

---

### 2. `EVENT_TYPE`  
Represents the type of event that occurred (e.g., entry, exit).

![Event Type View](img/event_type1.png)  
![Event Type Chart](img/event_type2.png)

---

### 3. `RECORD_UID`  
Unique identifier for the event record received from Cisco Spaces.

![Record UID View](img/record_uid1.png)  
![Record UID Details](img/record_uid2.png)

---

### 4. `TOTAL_USERS`  
Indicates the total number of users detected in the location at that timestamp.

![Total Users Value](img/total_users1.png)  
![Total Users Graph](img/total_users2.png)

---

### 5. `USERS_WITH_USER_ID`  
Number of users identified with a valid user ID.

![Users With ID Metric](img/user_with_user_id1.png)  
![Users With ID Trend](img/user_with_user_id2.png)

---

### 6. `USER_WITHOUT_USERID`  
Number of anonymous users or users without an ID.

![Users Without ID Metric](img/user_without_userid1.png)  
![Users Without ID Chart](img/user_without_userid2.png)

---

### 7. `X_POS`  
X-coordinate of user position within the mapped space.

![X Position Metric](img/x_pos1.png)  
![X Position Distribution](img/x_pos2.png)

---

### 8. `Y_POS`  
Y-coordinate of user position within the mapped space.

![Y Position Metric](img/y_pos1.png)  
![Y Position Distribution](img/y_pos2.png)

---

## Dimensions Fetched from Cisco Spaces

In addition to event metrics, Cisco Spaces also provides **dimension details** configured during the subscription phase. These include:

### 1. `X-OFFSET`  
The horizontal offset configured in **Edit Offset and Measurement**.

![X Offset Setting](img/X-offset.png) 

---

### 2. `Y-OFFSET`  
The vertical offset configured in **Edit Offset and Measurement**.

![Y Offset Setting](img/y-offset.png)  

---

