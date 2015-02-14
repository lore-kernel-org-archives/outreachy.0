X-GM-THRID: 9871294464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64a1fb55b3e53cb0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.100.77 with SMTP id z13mr15642177icn.10.1423884498992;
        Fri, 13 Feb 2015 19:28:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.65 with SMTP id 62ls1029914iof.9.gmail; Fri, 13 Feb 2015
 19:28:18 -0800 (PST)
X-Received: by 10.42.157.134 with SMTP id d6mr14492174icx.27.1423884498809;
        Fri, 13 Feb 2015 19:28:18 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com. [209.85.214.169])
        by gmr-mx.google.com with ESMTPS id t6si45886igz.3.2015.02.13.19.28.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 19:28:18 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.214.169;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by mail-ob0-f169.google.com with SMTP id wp4so26818242obc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Feb 2015 19:28:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=Vg0zl73tYZNuQRtrJZ03tLNnf0lRcCbo2peApvVA4c0=;
        b=A7Tvr8U4OaZ1GGraefdG5RQfNN9Krwl1a+xTVhqM3lxgV2C//E6iX6SIPfdfsAN/wp
         8586sAcywIYstW8sULDVtKkctXRpzA8omqtSuwYXZTNayhB/8yV5brsWLNGqnIfAR1Rl
         ZZCK27fnjoGMXnRsy+3VDDR2/YjPyICCmKr1UAvMINjRty1rOY5XnVrwT+9qLzibSTt1
         9PnGEs/eq+5/QME1nZnkTugLUM4iD7ukjf740vlH4FE9ZgiDyo965i/7YwDtAQNYYUzG
         +YfmZk57b6IDSKAdrh89eSzUM252Lg+Sdh4VKr2UC5Ff8mJJkvXcckA6gHW3Q/ui4n3j
         0yng==
X-Gm-Message-State: ALoCoQmTLbToqHJGe/mO6fZZ+FARx0sHBFDXlVArG0UfeVw8tXamD+BxMF08ueB6xqjVnxdHymHx
MIME-Version: 1.0
X-Received: by 10.182.104.42 with SMTP id gb10mr8417242obb.62.1423884498239;
 Fri, 13 Feb 2015 19:28:18 -0800 (PST)
Received: by 10.202.104.163 with HTTP; Fri, 13 Feb 2015 19:28:18 -0800 (PST)
In-Reply-To: <54DE3CA5.80602@gmail.com>
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>
	<alpine.DEB.2.10.1502131808180.2995@hadrien>
	<54DE3CA5.80602@gmail.com>
Date: Fri, 13 Feb 2015 19:28:18 -0800
Message-ID: <CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com>
Subject: Re: Tutorial Help - Can't detect wifi after reboot
From: Katherine Dunne <kdunne@mail.ccsf.edu>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e01227f2eb821c9050f03f1ff

--089e01227f2eb821c9050f03f1ff
Content-Type: text/plain; charset=UTF-8

Forgive me if I end up not addressing your suggestions. I am new to Linux,
so I've been researching exactly what your responses mean.

When I ran dmesg | grep wlan it did not give any information.

The next thing I did was to reboot in recovery mode, then resume normal
rebooting, which connected me back to wifi.

After that I ran dmesg | grep wlan and this information seemed important:

[    8.279472] usb 1-1.6: Direct firmware load failed with error -2
[    8.280800] usb 1-1.6: Falling back to user helper
[    8.282676] Bluetooth: can't load firmware, may not work correctly
[    8.322736] wl: module license 'MIXED/Proprietary' taints kernel.
[    8.323730] Disabling lock debugging due to kernel taint
[    8.326499] wl: module verification failed: signature and/or  required
key missing - tainting kernel
[    8.329087] wl 0000:06:00.0: enabling device (0000 -> 0002)
[    8.340921] intel_rapl: domain uncore energy ctr 28408:28408 not
working, skip
[    8.359971] INFO @wl_cfg80211_attach : Registered CFG80211 phy
[    8.361506] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD
(1bcf:2b8b)
[    8.371637] input: Integrated_Webcam_HD as
/devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/input9
[    8.372808] usbcore: registered new interface driver uvcvideo
[    8.373989] USB Video Class driver (1.1.1)
[    8.406564] lib80211_crypt: registered algorithm 'TKIP'
[    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
6.30.223.141 (r415941)
[    8.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    8.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   10.288246] Bluetooth: hci0 command 0x1003 tx timeout


The wifi driver I am using is Broadcom Corporation BCM43142 802.11b/g/n
(rev 01)

With the suggestion that the wireless driver was not in the kernel I built,
I realized I didn't follow the step under Configure the Kernel. So I copied
a config file from /boot into git/kernels/staging thinking this would
include the wireless driver, but it has not solved the problem. I have the
feeling that is not what you were suggesting.



On Fri, Feb 13, 2015 at 10:04 AM, Jes Sorensen <jes.sorensen@gmail.com>
wrote:

> On 02/13/15 12:12, Julia Lawall wrote:
> > On Fri, 13 Feb 2015, Katherine Dunne wrote:
> >
> >> I have been going through the tutorial, using Ubuntu 14.04.1
> >> I am at the point under Test Your Changes under Modifying a Driver on
> Native
> >> Linux.
> >> Since rebooting, my computer can't detect wifi.
> >> I noticed on rebooting a new message appeared "Bluetooth TX [hex
> address]
> >> timeout," but after disabling bluetooth per another tutorial's
> suggestion,
> >> the message does not appear, and there is still no wifi detected.
> >>
> >> The last time I succesfully rebooted and had a wifi connection was right
> >> before cloning the staging repository in the Tool Set Up section.
> >> Would it be helpful to list the commands that I've run between my two
> reboot
> >> times?
> >> The driver I modified was /drivers/net/hamradio/baycom_epp.c
> >
> > Perhaps the kernel you are compiling does not have the wifi driver that
> > the ubuntu kernel uses for your laptop?  Maybe it would help to use lspci
> > with your ubuntu setup to see what wifi driver you are using, and then to
> > see if that is in the configuration of the one that you are compiling?
> > One could also wonder if the driver you modified is selected in the
> > configuration of the kernel you are modifying.  When you compiled your
> > kernel, did you get a file drivers/net/hamradio/baycom_epp.o?  If you did
> > not, then your probably has nothing to do with your change, because you
> > change is not even in the compiled kernel.  But they are probably not
> > related in any case.
>
> The wireless card could be either PCI or USB or SDIO, so if you run
> 'iw dev' as root, it should tell you the state of your device.
>
> If nothing shows up in the output, try 'dmesg | grep wlan' and see if it
> shows something.
>
> It is very possible that you didn't include the wireless driver in the
> kernel you built, as Julia points out.
>
> Cheers,
> Jes
>
>

--089e01227f2eb821c9050f03f1ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Forgive me if I end up not addressing your sugge=
stions. I am new to Linux, so I&#39;ve been researching exactly what your r=
esponses mean.<br><br>When I ran dmesg | grep wlan it did not give any info=
rmation.<br></div><div><br></div>The next thing I did was to reboot in reco=
very mode, then resume normal rebooting, which connected me back to wifi.<b=
r><br></div>After that I ran dmesg | grep wlan and this information seemed =
important:<br><div><div><div><div><div><br><div>[ =C2=A0 =C2=A08.279472] us=
b 1-1.6: Direct firmware load failed with error -2</div>
<div>[ =C2=A0 =C2=A08.280800] usb 1-1.6: Falling back to user helper</div>
<div>[ =C2=A0 =C2=A08.282676] Bluetooth: can&#39;t load firmware, may not w=
ork correctly</div>
<div>[ =C2=A0 =C2=A08.322736] wl: module license &#39;MIXED/Proprietary&#39=
; taints kernel.</div>
<div>[ =C2=A0 =C2=A08.323730] Disabling lock debugging due to kernel taint<=
/div>
<div>[ =C2=A0 =C2=A08.326499] wl: module verification failed: signature and=
/or =C2=A0required key missing - tainting kernel</div>
<div>[ =C2=A0 =C2=A08.329087] wl 0000:06:00.0: enabling device (0000 -&gt; =
0002)</div>
<div>[ =C2=A0 =C2=A08.340921] intel_rapl: domain uncore energy ctr 28408:28=
408 not working, skip</div>
<div>[ =C2=A0 =C2=A08.359971] INFO @wl_cfg80211_attach : Registered CFG8021=
1 phy</div>
<div>[ =C2=A0 =C2=A08.361506] uvcvideo: Found UVC 1.00 device Integrated_We=
bcam_HD (1bcf:2b8b)</div>
<div>[ =C2=A0 =C2=A08.371637] input: Integrated_Webcam_HD as /devices/pci00=
00:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/input9</div>
<div>[ =C2=A0 =C2=A08.372808] usbcore: registered new interface driver uvcv=
ideo</div>
<div>[ =C2=A0 =C2=A08.373989] USB Video Class driver (1.1.1)</div>
<div>[ =C2=A0 =C2=A08.406564] lib80211_crypt: registered algorithm &#39;TKI=
P&#39;</div>
<div>[ =C2=A0 =C2=A08.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireles=
s Controller 6.30.223.141 (r415941)</div>
<div>[ =C2=A0 =C2=A08.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not =
ready</div>
<div>[ =C2=A0 =C2=A08.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not=
 ready</div>
[ =C2=A0 10.288246] Bluetooth: hci0 command 0x1003 tx timeout<br><br></div>=
<div><br>The wifi driver I am using is Broadcom Corporation BCM43142 802.11=
b/g/n (rev 01)<br><br>With the suggestion that the wireless driver was not =
in the kernel I built, I realized I didn&#39;t follow the step under Config=
ure the Kernel. So I copied a config file from /boot into git/kernels/stagi=
ng thinking this would include the wireless driver, but it has not solved t=
he problem. I have the feeling that is not what you were suggesting.<br><br=
><br></div></div></div></div></div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Fri, Feb 13, 2015 at 10:04 AM, Jes Sorensen <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:jes.sorensen@gmail.com" target=3D"_blan=
k">jes.sorensen@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 02/13/15 12:12, Julia Law=
all wrote:<br>
&gt; On Fri, 13 Feb 2015, Katherine Dunne wrote:<br>
&gt;<br>
&gt;&gt; I have been going through the tutorial, using Ubuntu 14.04.1<br>
&gt;&gt; I am at the point under Test Your Changes under Modifying a Driver=
 on Native<br>
&gt;&gt; Linux.<br>
&gt;&gt; Since rebooting, my computer can&#39;t detect wifi.<br>
&gt;&gt; I noticed on rebooting a new message appeared &quot;Bluetooth TX [=
hex address]<br>
&gt;&gt; timeout,&quot; but after disabling bluetooth per another tutorial&=
#39;s suggestion,<br>
&gt;&gt; the message does not appear, and there is still no wifi detected.<=
br>
&gt;&gt;<br>
&gt;&gt; The last time I succesfully rebooted and had a wifi connection was=
 right<br>
&gt;&gt; before cloning the staging repository in the Tool Set Up section.<=
br>
&gt;&gt; Would it be helpful to list the commands that I&#39;ve run between=
 my two reboot<br>
&gt;&gt; times?<br>
&gt;&gt; The driver I modified was /drivers/net/hamradio/baycom_epp.c<br>
&gt;<br>
&gt; Perhaps the kernel you are compiling does not have the wifi driver tha=
t<br>
&gt; the ubuntu kernel uses for your laptop?=C2=A0 Maybe it would help to u=
se lspci<br>
&gt; with your ubuntu setup to see what wifi driver you are using, and then=
 to<br>
&gt; see if that is in the configuration of the one that you are compiling?=
<br>
&gt; One could also wonder if the driver you modified is selected in the<br=
>
&gt; configuration of the kernel you are modifying.=C2=A0 When you compiled=
 your<br>
&gt; kernel, did you get a file drivers/net/hamradio/baycom_epp.o?=C2=A0 If=
 you did<br>
&gt; not, then your probably has nothing to do with your change, because yo=
u<br>
&gt; change is not even in the compiled kernel.=C2=A0 But they are probably=
 not<br>
&gt; related in any case.<br>
<br>
</div></div>The wireless card could be either PCI or USB or SDIO, so if you=
 run<br>
&#39;iw dev&#39; as root, it should tell you the state of your device.<br>
<br>
If nothing shows up in the output, try &#39;dmesg | grep wlan&#39; and see =
if it<br>
shows something.<br>
<br>
It is very possible that you didn&#39;t include the wireless driver in the<=
br>
kernel you built, as Julia points out.<br>
<br>
Cheers,<br>
Jes<br>
<br>
</blockquote></div><br></div>

--089e01227f2eb821c9050f03f1ff--

