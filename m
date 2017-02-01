X-GM-THRID: 6382003943733460992
X-Gmail-Labels: Topic type: DISCUSSION
Date: Wed, 1 Feb 2017 00:15:31 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <21079f50-f1be-4d08-a713-d159a38c2ed6@googlegroups.com>
In-Reply-To: <473425f3-80e5-4145-bc41-b9c26eab8472@googlegroups.com>
References: <473425f3-80e5-4145-bc41-b9c26eab8472@googlegroups.com>
Subject: Re: printk(KERN_DEBUG "I can modify the Linux kernel!\n"); is not
 working
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7417_980888078.1485936931097"
X-Google-Token: EKOyxsQFBgUqENjoP3w0
X-Google-IP: 14.139.82.6

------=_Part_7417_980888078.1485936931097
Content-Type: multipart/alternative; 
	boundary="----=_Part_7418_689145223.1485936931097"

------=_Part_7418_689145223.1485936931097
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Hi Julia
Then which mailing should I use to ask doubt?

On Wednesday, February 1, 2017 at 10:44:46 AM UTC+5:30, Arushi Singhal 
wrote:
>
> static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent) {
>          struct net_device *netdev;
>          struct e1000_adapter *adapter;
>          struct e1000_hw *hw;
>
>          printk(KERN_DEBUG "I can modify the Linux kernel!\n");
>          static int cards_found = 0;
>
> After completing this process when I will run *make* followed by *sudo make modules_install install *then the result of
> * dmesg | less*is showing
>
> [   57.979221] systemd-hostnamed[2468]: Warning: nss-myhostname is not installed. Changing the local hostname might make it unresolveable. Please insta
> ll nss-myhostname!
> [   60.054496] *kauditd_printk_skb: 45 callbacks suppressed*
> [   60.054497] audit: type=1400 audit(1485924924.413:33): apparmor="STATUS" operation="profile_replace" name="/usr/lib/cups/backend/cups-pdf" pid=2535 comm="apparmor_parser"
> [   60.054498] audit: type=1400 audit(1485924924.413:34): apparmor="STATUS" operation="profile_replace" name="/usr/sbin/cupsd" pid=2535 comm="apparmor_parser"
> [   68.021840] init: plymouth-stop pre-start process (3103) terminated with status 1
> ~
>
>
------=_Part_7418_689145223.1485936931097
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi Julia<br>Then which mailing should I use to ask dou=
bt?<br><br>On Wednesday, February 1, 2017 at 10:44:46 AM UTC+5:30, Arushi S=
inghal wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-le=
ft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">=
<pre>static int e1000_probe(struct pci_dev *pdev, const struct pci_device_i=
d *ent) {
         struct net_device *netdev;
         struct e1000_adapter *adapter;
         struct e1000_hw *hw;

         printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&quot;);
         static int cards_found =3D 0;<br><br>After completing this process=
 when I will run <b>make</b> followed by <b>sudo make modules_install insta=
ll </b>then the result of<b> dmesg | less<br></b>is showing<br><b><br></b>[=
   57.979221] systemd-hostnamed[2468]: Warning: nss-myhostname is not insta=
lled. Changing the local hostname might make it unresolveable. Please insta=
<br>ll nss-myhostname!<br>[   60.054496] <b>kauditd_printk_skb: 45 callback=
s suppressed</b><br>[   60.054497] audit: type=3D1400 audit(1485924924.413:=
33): apparmor=3D&quot;STATUS&quot; operation=3D&quot;profile_replace&quot; =
name=3D&quot;/usr/lib/cups/backend/<wbr>cups-pdf&quot; pid=3D2535 comm=3D&q=
uot;apparmor_parser&quot;<br>[   60.054498] audit: type=3D1400 audit(148592=
4924.413:34): apparmor=3D&quot;STATUS&quot; operation=3D&quot;profile_repla=
ce&quot; name=3D&quot;/usr/sbin/cupsd&quot; pid=3D2535 comm=3D&quot;apparmo=
r_parser&quot;<br>[   68.021840] init: plymouth-stop pre-start process (310=
3) terminated with status 1<br>~<br><br></pre></div></blockquote></div>
------=_Part_7418_689145223.1485936931097--

------=_Part_7417_980888078.1485936931097--

