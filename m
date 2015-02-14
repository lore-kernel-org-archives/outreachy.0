X-GM-THRID: 9871294464
X-Received: by 10.50.56.6 with SMTP id w6mr1148751igp.5.1423938657696;
        Sat, 14 Feb 2015 10:30:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.33 with SMTP id 30ls1682833qgg.51.gmail; Sat, 14 Feb
 2015 10:30:57 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr14101647vdc.2.1423938657528;
        Sat, 14 Feb 2015 10:30:57 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com. [209.85.214.169])
        by gmr-mx.google.com with ESMTPS id t6si174318igz.3.2015.02.14.10.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Feb 2015 10:30:57 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.214.169;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by mail-ob0-f169.google.com with SMTP id wp4so30575959obc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Feb 2015 10:30:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=yaTr/b5OHLYqQtXV9OD4eHdsw/j9Wxqsszcj+zqfLRg=;
        b=Ooxfj0HR0meKwXKorR4bKSb7FEWHCXyx9I8VOxCkzyCqfbTHxNcVVzYwffgk7/OwUm
         eUmCc8g2g6PhWmC3YkU2CGMZpOVS3UL8SorKoyCOwktFBUsLTBqqS/BWkGw/by9QMVbS
         C8cm4TX0g+5MiN2GWdWFYOjw+r+e3UEyNI+W65/5CgHXHjL+DLGUKCZmzdBxbLwr/u1Q
         +iTxm4XwRzYdw0kyQlxWVd30viKXNBUQe+jvcgVPGeeM0gDn3OcjJ1yiHshZx2C6Tb7A
         lnEPCmgu9H9WKYJblnwBUfOwkq6Ghh+IpwJCsYEy4OVh+V9hK0mkPeqL7+DcdZhAQpfV
         r9Zg==
X-Gm-Message-State: ALoCoQmGX4hyzt5y72e3MRYIT7RCye/l0AbWMsmvSThw1pM13Z7Xi8B6ci/x8Qr4DAzFpRy66Y76
MIME-Version: 1.0
X-Received: by 10.60.17.234 with SMTP id r10mr10708663oed.9.1423938657197;
 Sat, 14 Feb 2015 10:30:57 -0800 (PST)
Received: by 10.202.104.163 with HTTP; Sat, 14 Feb 2015 10:30:57 -0800 (PST)
In-Reply-To: <54DED232.8070101@gmail.com>
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>
	<alpine.DEB.2.10.1502131808180.2995@hadrien>
	<54DE3CA5.80602@gmail.com>
	<CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com>
	<54DECFFA.7020103@gmail.com>
	<54DED232.8070101@gmail.com>
Date: Sat, 14 Feb 2015 10:30:57 -0800
Message-ID: <CA+Cr939uK+af-cb01Y29-TVwL3ztWv=8AvH++H1BCP+Rz9jbOA@mail.gmail.com>
Subject: Re: Tutorial Help - Can't detect wifi after reboot
From: Katherine Dunne <kdunne@mail.ccsf.edu>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01294442d83925050f108ddd

--089e01294442d83925050f108ddd
Content-Type: text/plain; charset=UTF-8

Thanks for the help, Julia and Jes, it pointed me in the direction to find
lots of information.

I fixed the wifi problem by finding this:
https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1358966
and downloading the package
bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu2_amd64.deb

I am still not able to find the changes that I made in a driver through
dmesg | less after rebooting.
The most recent steps I took were

cd git/kernels/staging
lsmod
git grep wl -- "*Makefile'

//This gave me a bunch of files that I didn't recognize. I wasn't sure what
to do with this information so instead I went into the driver folder and
tried to find a .c file that seemed similar to the example 'e1000_main.c'
cd drivers/net/wireless

vim atmel_pci.c

//I found the function static int atmel_pci_probe(struct pci_dev *pdev,
                                     const struct pci_device_id *pent)
and inserted printk(KERN_DEBUG "I can modify the Linux kernel!\n");

:wq
make
sudo make modules_install install
sudo reboot now
dmesg | less

when I try /I can the pattern is not found.




On Fri, Feb 13, 2015 at 8:42 PM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:

> On 02/13/15 23:32, Jes Sorensen wrote:
> > On 02/13/15 22:28, Katherine Dunne wrote:
> >> Forgive me if I end up not addressing your suggestions. I am new to
> Linux,
> >> so I've been researching exactly what your responses mean.
> >>
> >> When I ran dmesg | grep wlan it did not give any information.
> >>
> >> The next thing I did was to reboot in recovery mode, then resume normal
> >> rebooting, which connected me back to wifi.
> >>
> >> After that I ran dmesg | grep wlan and this information seemed
> important:
> >>
> >> [    8.279472] usb 1-1.6: Direct firmware load failed with error -2
> >> [    8.280800] usb 1-1.6: Falling back to user helper
> >> [    8.282676] Bluetooth: can't load firmware, may not work correctly
> >> [    8.322736] wl: module license 'MIXED/Proprietary' taints kernel.
> >> [    8.323730] Disabling lock debugging due to kernel taint
> >> [    8.326499] wl: module verification failed: signature and/or
> required
> >> key missing - tainting kernel
> >> [    8.329087] wl 0000:06:00.0: enabling device (0000 -> 0002)
> >> [    8.340921] intel_rapl: domain uncore energy ctr 28408:28408 not
> >> working, skip
> >> [    8.359971] INFO @wl_cfg80211_attach : Registered CFG80211 phy
> >> [    8.361506] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD
> >> (1bcf:2b8b)
> >> [    8.371637] input: Integrated_Webcam_HD as
> >> /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/input9
> >> [    8.372808] usbcore: registered new interface driver uvcvideo
> >> [    8.373989] USB Video Class driver (1.1.1)
> >> [    8.406564] lib80211_crypt: registered algorithm 'TKIP'
> >> [    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
> >> 6.30.223.141 (r415941)
> >> [    8.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> >> [    8.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
> >> [   10.288246] Bluetooth: hci0 command 0x1003 tx timeout
> >>
> >>
> >> The wifi driver I am using is Broadcom Corporation BCM43142 802.11b/g/n
> >> (rev 01)
> >>
> >> With the suggestion that the wireless driver was not in the kernel I
> built,
> >> I realized I didn't follow the step under Configure the Kernel. So I
> copied
> >> a config file from /boot into git/kernels/staging thinking this would
> >> include the wireless driver, but it has not solved the problem. I have
> the
> >> feeling that is not what you were suggesting.
> >
> > OK, what you see above is a message indicating that the wifi driver is
> > in the kernel, it is this line:
> >
> > [    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
> > 6.30.223.141 (r415941)
> >
> > If that didn't show up in your self built kernel it means the driver
> > wasn't built or loaded correctly.
> >
> > I did a bit of searching and it looks like the 43142 is known for being
> > a tricky device, however I don't have any first hand experience with it.
> > There seems to be various drivers for it. Do you get any output if you
> > run this command from a system where the wifi is working:
> >
> > ls -l /sys/class/net/wlan0/device/driver/module/drivers/
> >
> > On my laptop it looks like with (it is using the iwlwifi driver module):
> >
> > [jes@ultrasam ~]$ ls -l
> /sys/class/net/wlan0/device/driver/module/drivers/
> > total 0
> > lrwxrwxrwx. 1 root root 0 Feb 13 23:29 pci:iwlwifi ->
> > ../../../bus/pci/drivers/iwlwifi
>
> Searched a bit more and came across this:
>
> http://www.broadcom.com/support/802.11/linux_sta.php
>
> Looks like Broadcom is shipping a proprietary driver for the 43142 and
> my guess is that Ubuntu installs it without warning you. In that case
> you may have to install that on top of your self compiled kernel to get
> wifi to work :( Alternatively a $10 USB device could work if you don't
> want to fight with this constantly.
>
> Jes
>
>

--089e01294442d83925050f108ddd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div><di=
v><div><div><div><div><div>Thanks for the help, Julia and Jes, it pointed m=
e in the direction to find lots of information.<br><br></div>I fixed the wi=
fi problem by finding this: <a href=3D"https://bugs.launchpad.net/ubuntu/+s=
ource/bcmwl/+bug/1358966">https://bugs.launchpad.net/ubuntu/+source/bcmwl/+=
bug/1358966</a><br></div>and downloading the package bcmwl-kernel-source_6.=
30.223.248+bdcom-0ubuntu2_amd64.deb<br><br></div>I am still not able to fin=
d the changes that I made in a driver through dmesg | less after rebooting.=
<br></div>The most recent steps I took were<br></div><br>cd git/kernels/sta=
ging<br></div>lsmod<br></div>git grep wl -- &quot;*Makefile&#39; <br><br>//=
This gave me a bunch of files that I didn&#39;t recognize. I wasn&#39;t sur=
e what to do with this information so instead I went into the driver folder=
 and tried to find a .c file that seemed similar to the example &#39;e1000_=
main.c&#39; <br></div>cd drivers/net/wireless<br></div><br>vim atmel_pci.c<=
br></div><br>//I found the function static int atmel_pci_probe(struct pci_d=
ev *pdev,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 const struct pci_device_id *pent)<br></div>and inserted printk(KERN_=
DEBUG &quot;I can modify the Linux kernel!\n&quot;);<br></div><br>:wq<br></=
div>make<br></div>sudo make modules_install install<br></div>sudo reboot no=
w<br></div>dmesg | less<br><br></div>when I try /I can the pattern is not f=
ound.<br><div><div><div><div><div><br><div><br><div><div><div><br></div></d=
iv></div></div></div></div></div></div></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Fri, Feb 13, 2015 at 8:42 PM, Jes Sore=
nsen <span dir=3D"ltr">&lt;<a href=3D"mailto:jes.sorensen@gmail.com" target=
=3D"_blank">jes.sorensen@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 02/13/15 23:32, =
Jes Sorensen wrote:<br>
&gt; On 02/13/15 22:28, Katherine Dunne wrote:<br>
&gt;&gt; Forgive me if I end up not addressing your suggestions. I am new t=
o Linux,<br>
&gt;&gt; so I&#39;ve been researching exactly what your responses mean.<br>
&gt;&gt;<br>
&gt;&gt; When I ran dmesg | grep wlan it did not give any information.<br>
&gt;&gt;<br>
&gt;&gt; The next thing I did was to reboot in recovery mode, then resume n=
ormal<br>
&gt;&gt; rebooting, which connected me back to wifi.<br>
&gt;&gt;<br>
&gt;&gt; After that I ran dmesg | grep wlan and this information seemed imp=
ortant:<br>
&gt;&gt;<br>
&gt;&gt; [=C2=A0 =C2=A0 8.279472] usb 1-1.6: Direct firmware load failed wi=
th error -2<br>
&gt;&gt; [=C2=A0 =C2=A0 8.280800] usb 1-1.6: Falling back to user helper<br=
>
&gt;&gt; [=C2=A0 =C2=A0 8.282676] Bluetooth: can&#39;t load firmware, may n=
ot work correctly<br>
&gt;&gt; [=C2=A0 =C2=A0 8.322736] wl: module license &#39;MIXED/Proprietary=
&#39; taints kernel.<br>
&gt;&gt; [=C2=A0 =C2=A0 8.323730] Disabling lock debugging due to kernel ta=
int<br>
&gt;&gt; [=C2=A0 =C2=A0 8.326499] wl: module verification failed: signature=
 and/or=C2=A0 required<br>
&gt;&gt; key missing - tainting kernel<br>
&gt;&gt; [=C2=A0 =C2=A0 8.329087] wl 0000:06:00.0: enabling device (0000 -&=
gt; 0002)<br>
&gt;&gt; [=C2=A0 =C2=A0 8.340921] intel_rapl: domain uncore energy ctr 2840=
8:28408 not<br>
&gt;&gt; working, skip<br>
&gt;&gt; [=C2=A0 =C2=A0 8.359971] INFO @wl_cfg80211_attach : Registered CFG=
80211 phy<br>
&gt;&gt; [=C2=A0 =C2=A0 8.361506] uvcvideo: Found UVC 1.00 device Integrate=
d_Webcam_HD<br>
&gt;&gt; (1bcf:2b8b)<br>
&gt;&gt; [=C2=A0 =C2=A0 8.371637] input: Integrated_Webcam_HD as<br>
&gt;&gt; /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/in=
put9<br>
&gt;&gt; [=C2=A0 =C2=A0 8.372808] usbcore: registered new interface driver =
uvcvideo<br>
&gt;&gt; [=C2=A0 =C2=A0 8.373989] USB Video Class driver (1.1.1)<br>
&gt;&gt; [=C2=A0 =C2=A0 8.406564] lib80211_crypt: registered algorithm &#39=
;TKIP&#39;<br>
&gt;&gt; [=C2=A0 =C2=A0 8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wir=
eless Controller<br>
&gt;&gt; 6.30.223.141 (r415941)<br>
&gt;&gt; [=C2=A0 =C2=A0 8.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is =
not ready<br>
&gt;&gt; [=C2=A0 =C2=A0 8.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is=
 not ready<br>
&gt;&gt; [=C2=A0 =C2=A010.288246] Bluetooth: hci0 command 0x1003 tx timeout=
<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; The wifi driver I am using is Broadcom Corporation BCM43142 802.11=
b/g/n<br>
&gt;&gt; (rev 01)<br>
&gt;&gt;<br>
&gt;&gt; With the suggestion that the wireless driver was not in the kernel=
 I built,<br>
&gt;&gt; I realized I didn&#39;t follow the step under Configure the Kernel=
. So I copied<br>
&gt;&gt; a config file from /boot into git/kernels/staging thinking this wo=
uld<br>
&gt;&gt; include the wireless driver, but it has not solved the problem. I =
have the<br>
&gt;&gt; feeling that is not what you were suggesting.<br>
&gt;<br>
&gt; OK, what you see above is a message indicating that the wifi driver is=
<br>
&gt; in the kernel, it is this line:<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireles=
s Controller<br>
&gt; 6.30.223.141 (r415941)<br>
&gt;<br>
&gt; If that didn&#39;t show up in your self built kernel it means the driv=
er<br>
&gt; wasn&#39;t built or loaded correctly.<br>
&gt;<br>
&gt; I did a bit of searching and it looks like the 43142 is known for bein=
g<br>
&gt; a tricky device, however I don&#39;t have any first hand experience wi=
th it.<br>
&gt; There seems to be various drivers for it. Do you get any output if you=
<br>
&gt; run this command from a system where the wifi is working:<br>
&gt;<br>
&gt; ls -l /sys/class/net/wlan0/device/driver/module/drivers/<br>
&gt;<br>
&gt; On my laptop it looks like with (it is using the iwlwifi driver module=
):<br>
&gt;<br>
&gt; [jes@ultrasam ~]$ ls -l /sys/class/net/wlan0/device/driver/module/driv=
ers/<br>
&gt; total 0<br>
&gt; lrwxrwxrwx. 1 root root 0 Feb 13 23:29 pci:iwlwifi -&gt;<br>
&gt; ../../../bus/pci/drivers/iwlwifi<br>
<br>
</div></div>Searched a bit more and came across this:<br>
<br>
<a href=3D"http://www.broadcom.com/support/802.11/linux_sta.php" target=3D"=
_blank">http://www.broadcom.com/support/802.11/linux_sta.php</a><br>
<br>
Looks like Broadcom is shipping a proprietary driver for the 43142 and<br>
my guess is that Ubuntu installs it without warning you. In that case<br>
you may have to install that on top of your self compiled kernel to get<br>
wifi to work :( Alternatively a $10 USB device could work if you don&#39;t<=
br>
want to fight with this constantly.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Jes<br>
<br>
</font></span></blockquote></div><br></div>

--089e01294442d83925050f108ddd--

