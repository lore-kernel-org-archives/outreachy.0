X-GM-THRID: 6945672657015668736
Date: Tue, 30 Mar 2021 21:37:15 -0700 (PDT)
From: Edith Puclla <edithpuclla20@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <7735e765-8b0e-415b-9630-ffa2b4f74a91n@googlegroups.com>
Subject: Modifying a driver on native Linux - which file should I modify?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_850_317948953.1617165435504"

------=_Part_850_317948953.1617165435504
Content-Type: multipart/alternative; 
	boundary="----=_Part_851_1403710629.1617165435504"

------=_Part_851_1403710629.1617165435504
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Everyone,  I am Edith from Peru, and I started to compile the Linux 
kernel.

I am following this 
guide: https://kernelnewbies.org/Outreachyfirstpatch?action=show&redirect=OPWfirstpatch#kernel-setup-done
*Section*: Modifying a driver on native Linux

I chose to modify this driver: *xhci-hcd* but I can't find the file to add 
a print printk(KERN_DEBUG "I can modify the Linux kernel!\n").

I look at all the files located in the same path of the Makefile after 
executing:  git grep xhci-hcd -- '*Makefile'

Could you please tell me which file could I modify for that driver?

Thank you in advance!

Edith

------=_Part_851_1403710629.1617165435504
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello Everyone,&nbsp; I am Edith from Peru, and I started to compile the Linux kernel.<br><br>I am following this guide:&nbsp;https://kernelnewbies.org/Outreachyfirstpatch?action=show&amp;redirect=OPWfirstpatch#kernel-setup-done<br><b>Section</b>: Modifying a driver on native Linux<br><br><div>I chose to modify this driver:&nbsp;<b>xhci-hcd</b> but I can't find the file to add a print printk(KERN_DEBUG "I can modify the Linux kernel!\n").<div><br></div><div>I look at all the files located in the same path of the Makefile after executing:&nbsp; git grep xhci-hcd -- '*Makefile'<br><br>Could you please tell me which file could I modify for that driver?<br><br>Thank you in advance!<br><br>Edith</div></div>
------=_Part_851_1403710629.1617165435504--

------=_Part_850_317948953.1617165435504--

