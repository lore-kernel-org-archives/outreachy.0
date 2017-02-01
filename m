X-GM-THRID: 6382003943733460992
Date: Tue, 31 Jan 2017 21:14:46 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <473425f3-80e5-4145-bc41-b9c26eab8472@googlegroups.com>
Subject: printk(KERN_DEBUG "I can modify the Linux kernel!\n"); is not
 working
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8127_1533687463.1485926086365"
X-Google-Token: EMbdxcQFZHCs8AoVJPY0
X-Google-IP: 14.139.82.6

------=_Part_8127_1533687463.1485926086365
Content-Type: multipart/alternative; 
	boundary="----=_Part_8128_1946591873.1485926086365"

------=_Part_8128_1946591873.1485926086365
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent) {
         struct net_device *netdev;
         struct e1000_adapter *adapter;
         struct e1000_hw *hw;

         printk(KERN_DEBUG "I can modify the Linux kernel!\n");
         static int cards_found = 0;

After completing this process when I will run *make* followed by *sudo make modules_install install *then the result of
* dmesg | less*is showing

[   57.979221] systemd-hostnamed[2468]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please insta
ll nss-myhostname!
[   60.054496] *kauditd_printk_skb: 45 callbacks suppressed*
[   60.054497] audit: type=1400 audit(1485924924.413:33): apparmor="STATUS" operation="profile_replace" name="/usr/lib/cups/backend/cups-pdf" pid=2535 comm="apparmor_parser"
[   60.054498] audit: type=1400 audit(1485924924.413:34): apparmor="STATUS" operation="profile_replace" name="/usr/sbin/cupsd" pid=2535 comm="apparmor_parser"
[   68.021840] init: plymouth-stop pre-start process (3103) terminated with status 1
~


------=_Part_8128_1946591873.1485926086365
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><pre>static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent) {
         struct net_device *netdev;
         struct e1000_adapter *adapter;
         struct e1000_hw *hw;

         printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&quot;);
         static int cards_found = 0;<br><br>After completing this process when I will run <b>make</b> followed by <b>sudo make modules_install install </b>then the result of<b> dmesg | less<br></b>is showing<br><b><br></b>[   57.979221] systemd-hostnamed[2468]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please insta<br>ll nss-myhostname!<br>[   60.054496] <b>kauditd_printk_skb: 45 callbacks suppressed</b><br>[   60.054497] audit: type=1400 audit(1485924924.413:33): apparmor=&quot;STATUS&quot; operation=&quot;profile_replace&quot; name=&quot;/usr/lib/cups/backend/cups-pdf&quot; pid=2535 comm=&quot;apparmor_parser&quot;<br>[   60.054498] audit: type=1400 audit(1485924924.413:34): apparmor=&quot;STATUS&quot; operation=&quot;profile_replace&quot; name=&quot;/usr/sbin/cupsd&quot; pid=2535 comm=&quot;apparmor_parser&quot;<br>[   68.021840] init: plymouth-stop pre-start process (3103) terminated with status 1<br>~<br><br></pre></div>
------=_Part_8128_1946591873.1485926086365--

------=_Part_8127_1533687463.1485926086365--

