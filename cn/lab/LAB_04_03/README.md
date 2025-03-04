# Exploring UDP with DNS - Wireshark

**NOTE** : 
- This is done using *WSL* - ubuntu (commands to install are at last)
- Individual Task
---

Note down your IP address before proceeding
## **Step 1: Open CMD**
A) Open Two tabs and in both run below command
  ```sh
  Ubuntu
  ```
- In one of Tabs Run
  ```sh
  sudo wireshark
  ```
- When wireshark opens choose the one with your IP (or _any_)<br>
   **_any_** usually captures traffic from all available network interfaces.
  ![image](https://github.com/user-attachments/assets/61dca842-f8ac-45c4-beb3-443704aae2cd)
  Here ip matched with eth0
- Click on start Capturing packets ![image](https://github.com/user-attachments/assets/9d781040-bf1b-4ab3-8d40-4d18c060aecb)

B) Open the other tab and one after the other type below commands :<BR>
1. ```sh
   dig www.google.com
   ```
   open wireshark apply filter ```sh
   udp.port==53
       ```
   ![a](https://github.com/user-attachments/assets/b0239d31-e5f6-4e7e-8341-b3e44a0e02e6)
   ![acmd](https://github.com/user-attachments/assets/16f548ef-9d18-475c-ad91-63457ee709b5)

Similarly do for the other ones

2. ```sh
    dig www.google.com A
   ```
3. ```sh
   dig www.google.com AAAA
   ```
4. ```sh
   dig www.google.com CNAME
   ```
5. ```sh
   dig www.google.com MX
   ```

**NOTE :**
- Usually on running dig commands multiple times u get 2 DNS captures visible because, instead of making a new query to an external DNS server, it retrieves the cached result.
---

**Additional**:
- Install Ubuntu using wsl command<br>
  ```sh
  wsl --install -d Ubuntu
  ```
  
- Run the following cmds to install wireshark:<br>
  ```sh
  sudo apt update && sudo apt upgrade -y
  ```
  
    ```sh
  sudo apt install wireshark -y
    ```
  
