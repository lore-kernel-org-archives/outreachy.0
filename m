X-GM-THRID: 9871294464
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.236.42.228 with SMTP id j64mr14303176yhb.36.1423943051671;
        Sat, 14 Feb 2015 11:44:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.44.4 with SMTP id a4ls812396igm.36.canary; Sat, 14 Feb 2015
 11:44:11 -0800 (PST)
X-Received: by 10.66.119.174 with SMTP id kv14mr14647789pab.21.1423943051464;
        Sat, 14 Feb 2015 11:44:11 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com. [209.85.214.175])
        by gmr-mx.google.com with ESMTPS id mg3si710676igb.0.2015.02.14.11.44.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Feb 2015 11:44:11 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.214.175;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by mail-ob0-f175.google.com with SMTP id va2so30915597obc.6
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Feb 2015 11:44:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=z3xDHQ6Abblg/TLK4ewrYKHu0VgeUjZjU/MQrWbzklM=;
        b=MbpFgSgd27+HO5aMuyUOvzwdI+fivKCWfmP22+u1TP/r/A/WDJbZeKAwnG8iUhu6T4
         oz8p4vsg49SGXr6oGtwSbUGBRO7h74iVsHeqOng40Fd5xbL9xYHOdIgwC+aAph8xfEZ9
         B1om6fith3OR0HgmjdByOzLgqbLNtAUz6zZNAj8y3WeG171hFVkjr2AooqP8x8tQtz9P
         K4havKJI3rZ/NuKy6E2AWrLE8M5K1fcnz1u7aKWU8/l3Ps0Lq6g1uxCOFNG5t1xAavyh
         Kwe8OzvZJQLLjNtUc+TG50yTaZq5sv7y0gbJP5lIvhPTh7p/GoGUfPBziDOXCcPl0bq4
         b+kA==
X-Gm-Message-State: ALoCoQmbSk2lWaN8fB6e7UY4jZcaOYLhWa0R7LKxac6yebR7f0arpBfWFWlu6nQ4WsZtpF0bz3mX
MIME-Version: 1.0
X-Received: by 10.182.20.110 with SMTP id m14mr10540141obe.25.1423943051254;
 Sat, 14 Feb 2015 11:44:11 -0800 (PST)
Received: by 10.202.104.163 with HTTP; Sat, 14 Feb 2015 11:44:11 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502141951510.6185@hadrien>
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>
	<alpine.DEB.2.10.1502131808180.2995@hadrien>
	<54DE3CA5.80602@gmail.com>
	<CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com>
	<54DECFFA.7020103@gmail.com>
	<54DED232.8070101@gmail.com>
	<CA+Cr939uK+af-cb01Y29-TVwL3ztWv=8AvH++H1BCP+Rz9jbOA@mail.gmail.com>
	<alpine.DEB.2.10.1502141951510.6185@hadrien>
Date: Sat, 14 Feb 2015 11:44:11 -0800
Message-ID: <CA+Cr938UDXn8roG2UQ2LLPTN56cfwEZ3in1Ogk_aC2Uv=5arEQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Tutorial Help - Can't detect wifi after reboot
From: Katherine Dunne <kdunne@mail.ccsf.edu>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113306bec032aa050f119327

--001a113306bec032aa050f119327
Content-Type: text/plain; charset=UTF-8

No, it wasn't. I followed your suggestion and was able to get it to work,
thanks!

On Sat, Feb 14, 2015 at 10:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 14 Feb 2015, Katherine Dunne wrote:
>
> > Thanks for the help, Julia and Jes, it pointed me in the direction to
> find
> > lots of information.
> >
> > I fixed the wifi problem by finding this:
> > https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1358966
> > and downloading the package
> > bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu2_amd64.deb
> >
> > I am still not able to find the changes that I made in a driver through
> > dmesg | less after rebooting.
> > The most recent steps I took were
> >
> > cd git/kernels/staging
> > lsmod
> > git grep wl -- "*Makefile'
> >
> > //This gave me a bunch of files that I didn't recognize. I wasn't sure
> what
> > to do with this information so instead I went into the driver folder and
> > tried to find a .c file that seemed similar to the example 'e1000_main.c'
> > cd drivers/net/wireless
> >
> > vim atmel_pci.c
> >
> > //I found the function static int atmel_pci_probe(struct pci_dev *pdev,
> >                                      const struct pci_device_id *pent)
> > and inserted printk(KERN_DEBUG "I can modify the Linux kernel!\n");
> >
> > :wq
> > make
> > sudo make modules_install install
> > sudo reboot now
> > dmesg | less
> >
> > when I try /I can the pattern is not found.
>
> Is the C file that you have modified being compiled?  Go to the directory
> where it is located and see if you have a .o file for it.  If not, find
> some .c file for which you have a .o file and try modifying that one
> instead.
>
> julia
>

--001a113306bec032aa050f119327
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, it wasn&#39;t. I followed your suggestion and was able=
 to get it to work, thanks!<br></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Sat, Feb 14, 2015 at 10:53 AM, Julia Lawall <span di=
r=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">jul=
ia.lawall@lip6.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On Sat, 14 Feb 2015, Katherine Dunne wrote:<br>
<br>
&gt; Thanks for the help, Julia and Jes, it pointed me in the direction to =
find<br>
&gt; lots of information.<br>
&gt;<br>
&gt; I fixed the wifi problem by finding this:<br>
&gt; <a href=3D"https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/135896=
6" target=3D"_blank">https://bugs.launchpad.net/ubuntu/+source/bcmwl/+bug/1=
358966</a><br>
&gt; and downloading the package<br>
&gt; bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu2_amd64.deb<br>
&gt;<br>
&gt; I am still not able to find the changes that I made in a driver throug=
h<br>
&gt; dmesg | less after rebooting.<br>
&gt; The most recent steps I took were<br>
&gt;<br>
&gt; cd git/kernels/staging<br>
&gt; lsmod<br>
&gt; git grep wl -- &quot;*Makefile&#39;<br>
&gt;<br>
&gt; //This gave me a bunch of files that I didn&#39;t recognize. I wasn&#3=
9;t sure what<br>
&gt; to do with this information so instead I went into the driver folder a=
nd<br>
&gt; tried to find a .c file that seemed similar to the example &#39;e1000_=
main.c&#39;<br>
&gt; cd drivers/net/wireless<br>
&gt;<br>
&gt; vim atmel_pci.c<br>
&gt;<br>
&gt; //I found the function static int atmel_pci_probe(struct pci_dev *pdev=
,<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 co=
nst struct pci_device_id *pent)<br>
&gt; and inserted printk(KERN_DEBUG &quot;I can modify the Linux kernel!\n&=
quot;);<br>
&gt;<br>
&gt; :wq<br>
&gt; make<br>
&gt; sudo make modules_install install<br>
&gt; sudo reboot now<br>
&gt; dmesg | less<br>
&gt;<br>
&gt; when I try /I can the pattern is not found.<br>
<br>
</div></div>Is the C file that you have modified being compiled?=C2=A0 Go t=
o the directory<br>
where it is located and see if you have a .o file for it.=C2=A0 If not, fin=
d<br>
some .c file for which you have a .o file and try modifying that one<br>
instead.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span></blockquote></div><br></div>

--001a113306bec032aa050f119327--

