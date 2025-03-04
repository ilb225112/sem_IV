# **Exploring UDP with Sockets - Wireshark**
## Prerequisites
- Two **Windows** laptops connected to the same network (Wi-Fi or mobile hotspot).
- Wireshark installed in _windows_
- [Download UDP Chat Tool](https://github.com/NemaAdarsh/Udp-Chat-Tool/raw/main/udp.exe) <br>
  Note: The .exe might show warning yet download
---
## **STEP 1:**
- Both **should** be connected to the same network
- Note down both's ip address
 ![image](https://github.com/user-attachments/assets/f8322d98-6e55-4382-aeeb-d8d4966227ac)
- **_RUN as administrator_**

## **STEP 2:**
- Choose any allowed port number say 12346,12348,..etc _CHOOSE **SAME** for both_ 
- Enter your friend's IP address.
- Let Your friend also do the same
- Click on start chat

## **STEP 3:**
- Open Wireshark
- Hover over the options and select the one that matches your IP.
  ![image](https://github.com/user-attachments/assets/bb599f20-3279-4281-afc0-cad2a7ec8462)
- Here Wi-Fi matched so double click, And apply filter
  say u initially selected port 12348<br>
   ```sh
   udp.port==12348
   ```
   **12348** is  port number u have entered in chat tool
- Start Chatting in UDP tool

  Your Wireshark captures would look like (2nd image) :
![image](https://github.com/user-attachments/assets/448d65ba-7ac0-4ab2-aee7-5ae6cbd39207)
![chat1w](https://github.com/user-attachments/assets/a2b863b9-4527-4b95-b43f-efcc12a6c052)

