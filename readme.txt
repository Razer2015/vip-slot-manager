VIP Slot Manager -  Procon Plugin [BF3, BF4, BFH, BC2]




INSTALLATION


IMPORTANT: This Plugin requires a MySQL database with INNODB support.


1. Upload the VipSlotManager.cs file to your Procon Layer Server into the folder procon/Plugins/BF4 (procon/Plugins/BFHL  OR  procon/Plugins/BF3  OR  procon/Plugins/BFBC2). Restart your Procon Layer.


2. Start your Procon PC Tool. Open the VIP Slot Manager Plugin settings. In the settings, you will find the section '1. MySQL Details'. There simply enter your MySQL details (host, port, database, username, password).


3. In the section '2. Main Settings', you can choose your 'Gameserver Type'.


4. The 'Server Group' is an important setting, for when you have more than one Gameserver. If two or more Gameservers use the same MySQL database, then the VIP players are valid for all these Gameservers with the same 'Server Group' ID. You can change the ID in order to manage the VIPs for each Gameserver separately.


5. Enable the Plugin.


6. Install the website (optional): In the downloaded ZIP file you find a free website template for this job. Before you upload the website replace your SQL details (SQL Server IP, dbName, dbUser, dbPW) in the 'config.php' file. The default login (user, pw) after the installation: admin , admin


After the first start the Plugin will connect to the MySQL database to automatically create tables for the Plugin. After the table is created, it will sync all VIP players from the Gameserver to the MySQL database. All the imported VIP players will get a valid VIP Slot for 30 days by the default settings 'Import NEW VIPS from Gameserver to SQL' = yes (30 days first Plugin installation only). This means that all your VIPs will stay within the SQL database and on your Gameserver! This setting will be changed after the first Sync/Import is completed successfully.




SUPPORT / FEEDBACK

Updates and support will be handled through the official procon forum thread or here on github.

https://forum.myrcon.com/showthread.php?17050-VIP-Slot-Manager
https://github.com/procon-plugin/vip-slot-manager/issues?state=open
