# **Persistent vs Non-Persistent HTTP Connection Analysis using Wireshark**


---
NOTE : **Following is done using a single device**
## **Pre-requisites**
### **For Server side**
  - Install Ubuntu using wsl command
      ```bash
       wsl --install ubuntu ```
  - Run the following cmds:
      ```bash
       sudo apt update
       sudo apt upgrade
       sudo apt install apache2
      ```
  - Download 10 images of size each > 2 MB
       like [Find high-quality images on Unsplash](https://unsplash.com)
    - In windows: File-explorer -> Linux -> Ubuntu -> home -> .. -> create a dir and paste 10 images
 ### For Client side (In Windows) :
  - Download Wireshark from the official site: [Wireshark Download](https://www.wireshark.org/download.html)
  - Download Firefox
  ---
  
## **Step 1: Server**
- Open ubuntu and start apache2
  ```bash
  sudo systemctl start apache2
  sudo systemctl status apache2
  ```
- Note down ip
    ```bash
    ip a | grep inet
    ```
  e.g :
  ```op
   inet 127-**
   inet 10.**
   inet6 :**
   inet 172.--.--207/20 brd --- : This one
   inet6 fe**
  ```
- Run the below cmds
  ```bash
   sudo cp ~/PATH_TO_IMAGES_DIR/* /var/www/html/
   sudo nano /var/www/html/index.html
  ```
- Modify the HTML page to
  ```html
  <html>
  <head>
    <link rel="icon" href="data:,">
    <style>
        body {
            text-align: center;
        }
        .image-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        img {
            width: 18%;  /* Adjusts size so 5 images fit per row */
            height: auto;
            margin: 5px;
            border: 2px solid black;
        }
    </style>
  </head>
  <body>
    <h1>Persistent vs Non-Persistent HTTP</h1>
    <div class="image-container">
        <img src="image1.jpg">
        <img src="image2.jpg">
        <img src="image3.jpg">
        <img src="image4.jpg">
        <img src="image5.jpg">
        <img src="image6.jpg">
        <img src="image7.jpg">
        <img src="image8.jpg">
        <img src="image9.jpg">
        <img src="image10.jpg">
    </div>
  </body>
  </html>
  ```
CTRL + X -> Y -> Enter

---

## **Step 2: Client Environment**
- Open **Firefox**:
    - type  about:config
    - in search bar below
      network.http.max-persistent-connections-per-server
    - change the value as per req
      Ctrl + Shift +R
    - Open new tab : Paste the ip u copied and press enter
  
- Open **Wireshark** :
   ![image](https://github.com/user-attachments/assets/d2dd57be-ed05-4f66-92ae-0adbef46255c)
  Click on the one which mathches ip u noted and click on Start Capturing
  Go back to firefox and Ctrl + Shift + R
  
---

**Repeat the above for different persistent values and tabulate them**
