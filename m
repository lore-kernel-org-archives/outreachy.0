X-GM-THRID: 6656651051112857600
Date: Mon, 11 Feb 2019 00:05:48 -0800 (PST)
From: afshanmassarat@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <93b12a4e-5839-45ad-982d-76682ab53098@googlegroups.com>
Subject: I don't get the message ,"I can modify the Linux kernel!\n" in log
 files
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1016_791193537.1549872348793"
X-Google-Token: ENzZhOMFtwE296jDB4c0
X-Google-IP: 2405:205:5:9315:e846:9bb8:134a:e5de

------=_Part_1016_791193537.1549872348793
Content-Type: multipart/alternative; 
	boundary="----=_Part_1017_1144224269.1549872348793"

------=_Part_1017_1144224269.1549872348793
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I am following the link 
"https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-

done" and modifying the driver in native Linux. I made a change in the 
e1000_main.c file i.e inserted the line 

"printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling 
the kernel and rebooting it, I don't get the message 

"I can modify the Linux kernel!\" in the log files on typing "dmesg | 
less". How should I proceed further?

------=_Part_1017_1144224269.1549872348793
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><div style="text-align: left;"><font size="4">I am following the link &quot;https://kernelnewbies.org/Outreachyfirstpatch?action=show&amp;redirect=OPWfirstpatch#kernel-setup-</font></div><div style="text-align: left;"><font size="4"><br></font></div><div style="text-align: left;"><font size="4">done&quot; and modifying the driver in native Linux. I made a change in the e1000_main.c file i.e inserted the line <br></font></div><div style="text-align: left;"><font size="4"><br></font></div><div style="text-align: left;"><font size="4">&quot;printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&quot;);&quot; After recompiling the kernel and rebooting it, I don&#39;t get the message <br></font></div><div style="text-align: left;"><font size="4"><br></font></div><div style="text-align: left;"><font size="4">&quot;I can modify the Linux kernel!\&quot; in the log files on typing &quot;dmesg | less&quot;. How should I proceed further?</font><br></div></div>
------=_Part_1017_1144224269.1549872348793--

------=_Part_1016_791193537.1549872348793--

