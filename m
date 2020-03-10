X-GM-THRID: 6802456134444646400
Date: Mon, 9 Mar 2020 23:04:00 -0700 (PDT)
From: Deepak Varma <mh12gx2825@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
Subject: Need help locating octeon_usb driver
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1523_1386075053.1583820240807"
X-Google-Token: ENDbnPMF9SVoyzsfOxI0
X-Google-IP: 103.240.207.69

------=_Part_1523_1386075053.1583820240807
Content-Type: multipart/alternative; 
	boundary="----=_Part_1524_2015204945.1583820240807"

------=_Part_1524_2015204945.1583820240807
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello all,
I made a clean up change to the octeon-usb driver file. I tried to correct 
a checkpatch warning of exceed 80 column. However, I am not able to locate 
this driver in the device driver list during "make menuconfig". 

I have verified the driver dependencies. I am unable to understand the 
CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something 
referred to as BROKEN???

Thank you,
Deepak.


------=_Part_1524_2015204945.1583820240807
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><div>Hello all,</div><div>I made a clean up change to the octeon-usb driver file. I tried to correct a checkpatch warning of exceed 80 column. However, I am not able to locate this driver in the device driver list during &quot;make menuconfig&quot;. <br></div><div><br></div><div>I have verified the driver dependencies. I am unable to understand the CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something referred to as BROKEN???</div><div><br></div><div>Thank you,</div><div>Deepak.<br></div><div><br></div></div>
------=_Part_1524_2015204945.1583820240807--

------=_Part_1523_1386075053.1583820240807--

