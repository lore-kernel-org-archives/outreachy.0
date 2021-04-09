X-GM-THRID: 6949289318658605056
Date: Fri, 9 Apr 2021 15:31:45 -0700 (PDT)
From: Mo Jauhar <siddmohamed19@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <0e9eb226-2111-4afa-a2c5-5a6cec9537c0n@googlegroups.com>
Subject: [Help Needed] Driver Modification on Native Linux
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2740_64051448.1618007505539"

------=_Part_2740_64051448.1618007505539
Content-Type: multipart/alternative; 
	boundary="----=_Part_2741_1876046498.1618007505539"

------=_Part_2741_1876046498.1618007505539
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello everybody,

I am following the step, *Make a driver change* in the tutorial but am 
stuck. My addition of print() statements inside the probe functions of 
modules does not show up in the log when I reboot my machine. 

Here is what I am trying to do:
1. Pick a module from the result of *lsmod*
2. I picked up *xhci-pci* and added a *printk("I can ...")* in its 
*xhci-pci.c* file, inside *xhci_pci_probe()*
3. I reboot
4. Check the log file using *dmesg | less *and search for *"I can ..." *and 
I am unsuccesful.

I have tried to do the same with *realtek *but I am still not successful.

Thanks in advance for your help. Please have a nice day!

Regards,
- Mohd Ali Jauhar

------=_Part_2741_1876046498.1618007505539
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello everybody,<div><br></div><div>I am following the step, <b>Make a driver change</b>&nbsp;in the tutorial but am stuck. My addition of print() statements inside the probe functions of modules does not show up in the log when I reboot my machine.&nbsp;</div><div><br></div><div>Here is what I am trying to do:</div><div>1. Pick a module from the result of <b>lsmod</b></div><div>2. I picked up <b>xhci-pci</b> and added a <b>printk("I can ...")</b> in its <b>xhci-pci.c</b> file, inside <b>xhci_pci_probe()</b></div><div>3. I reboot</div><div>4. Check the log file using <b>dmesg | less </b>and search for <b>"I can ..." </b>and I am unsuccesful.</div><div><br></div><div>I have tried to do the same with <b>realtek </b>but I am still not successful.</div><div><br></div><div>Thanks in advance for your help. Please have a nice day!</div><div><br></div><div>Regards,</div><div>- Mohd Ali Jauhar</div>
------=_Part_2741_1876046498.1618007505539--

------=_Part_2740_64051448.1618007505539--

