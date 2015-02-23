X-GM-THRID: 2499198058496
X-Received: by 10.112.77.101 with SMTP id r5mr1652911lbw.4.1424720987958;
        Mon, 23 Feb 2015 11:49:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls640650lad.53.gmail; Mon, 23 Feb
 2015 11:49:47 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr527862lax.10.1424720987433;
        Mon, 23 Feb 2015 11:49:47 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id el6si766567wib.2.2015.02.23.11.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:49:47 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id x12so947632wgg.11
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nbquiKNTmpJ6PaWuHew4ioGfilP/OZoOM9iqXz2XShs=;
        b=CrSE8m8KsBTPpLS2VqFQXdUSkcMmRG73AO4ihKKVpluNB4V71EJgS5Qx42tW2lGo0i
         Du60LTI8UmbOHI/k7MYqFbBGP177Ncnu2Beus32JDRDDE+Bc3ofh4zBZx0QCPQHwc/ZG
         j/NTDufimi2K2J9NQJcXc50S3MP0G9nqitDG8nud/THaqU6Q7C7K/dME8xrROcpQN7sR
         5x4AA/gAIDDx535xgXDwJ3h1kGJ7ZN4ttONGfQ5OI2to3xSDQDaBAi8eyd79c3mXroXJ
         BauhS1U3XibnoMvoLQhA3wxbnpilwroMIt1k1QNZm1aI+yDX8o5ugiGgSGCWAjdEDa5x
         HDPw==
MIME-Version: 1.0
X-Received: by 10.180.85.70 with SMTP id f6mr23450962wiz.22.1424720987200;
 Mon, 23 Feb 2015 11:49:47 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 11:49:47 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 11:49:47 -0800 (PST)
In-Reply-To: <54EB81D4.30906@gmail.com>
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>
	<54EB81D4.30906@gmail.com>
Date: Tue, 24 Feb 2015 01:19:47 +0530
Message-ID: <CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f46d0418255858b617050fc6b47a

--f46d0418255858b617050fc6b47a
Content-Type: text/plain; charset=UTF-8

On Feb 24, 2015 1:09 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>
> On 02/23/15 05:56, Vaishali Thakkar wrote:
> > This patch introduces the use of API function mod_timer
> > instead of driver specific function as it is a more
> > efficient and standard way to update the expire field of
> > an active timer.
> >
> > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> > ---
> > Changes since v1:
> >       -Edit commit message
> >       -Remove unnecessory parenthesis
> >       -Align second parameter of function
> >        mod_timer properly
> >
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
>
> I like this patch!
>
> However if you start getting rid of _set_timer() from a driver like
> this, you should try and remove all instances, and then get rid of all
> uses of _set_timer().

Yes. Actually I sent this patch for mentors' reviews. I thought if this
will be accepted then I will go for sending more patches as there are many
instances of _set_timer() in this driver and in other network drivers as
well. And then I can remove those definitions once all cases are handled.

Also, network drivers are using driver specific functions where we can use
setup_ timer() function. So, I will go for it as well.

> In addition you are still leaving some unnecessary parenthesis in place
> - see below.

Oops! yeah. I will remove them in next version.

> Cheers,
> Jes
>
>
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index 9bb364f..0ce8e9d 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct
sta_info *psta,
> >               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
> >                       key[24]), 8);
> >               padapter->securitypriv. busetkipkey = false;
> > -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
> > +             mod_timer(&padapter->securitypriv.tkip_timer,
> > +                       jiffies + msecs_to_jiffies(50));
> >       }
> >       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
> >  }
> > @@ -153,8 +154,8 @@ static inline void handle_group_key(struct
ieee_param *param,
> >               if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
> >                       if (padapter->registrypriv.power_mgnt !=
padapter->
> >                           pwrctrlpriv.pwr_mode)
> > -
 _set_timer(&(padapter->mlmepriv.dhcp_timer),
> > -                                        60000);
> > +
 mod_timer(&(padapter->mlmepriv.dhcp_timer),
>                                       here ^
> > +                                       jiffies +
msecs_to_jiffies(60000));
> >               }
> >       }
> >  }
> >
>

--f46d0418255858b617050fc6b47a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Feb 24, 2015 1:09 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"mailto:jes=
.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 02/23/15 05:56, Vaishali Thakkar wrote:<br>
&gt; &gt; This patch introduces the use of API function mod_timer<br>
&gt; &gt; instead of driver specific function as it is a more<br>
&gt; &gt; efficient and standard way to update the expire field of<br>
&gt; &gt; an active timer.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Vaishali Thakkar &lt;<a href=3D"mailto:vthakkar199=
4@gmail.com">vthakkar1994@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; Changes since v1:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Edit commit message<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Remove unnecessory parenthesis<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Align second parameter of function<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 mod_timer properly<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---<b=
r>
&gt; &gt;=C2=A0 1 file changed, 4 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; I like this patch!<br>
&gt;<br>
&gt; However if you start getting rid of _set_timer() from a driver like<br=
>
&gt; this, you should try and remove all instances, and then get rid of all=
<br>
&gt; uses of _set_timer().</p>
<p>Yes. Actually I sent this patch for mentors&#39; reviews. I thought if t=
his will be accepted then I will go for sending more patches as there are m=
any instances of _set_timer() in this driver and in other network drivers a=
s well. And then I can remove those definitions once all cases are handled.=
</p>
<p>Also, network drivers are using driver specific functions where we can u=
se setup_ timer() function. So, I will go for it as well.</p>
<p>&gt; In addition you are still leaving some unnecessary parenthesis in p=
lace<br>
&gt; - see below.</p>
<p>Oops! yeah. I will remove them in next version.</p>
<p>&gt; Cheers,<br>
&gt; Jes<br>
&gt;<br>
&gt;<br>
&gt; &gt; diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/driv=
ers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt; index 9bb364f..0ce8e9d 100644<br>
&gt; &gt; --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt; +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt; @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct=
 sta_info *psta,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(psta=
-&gt;tkiprxmickey. skey, &amp;(param-&gt;u.crypt.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0key[24]), 8);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0padapter-&g=
t;securitypriv. busetkipkey =3D false;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;=
padapter-&gt;securitypriv.tkip_timer, 50);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;p=
adapter-&gt;securitypriv.tkip_timer,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(50));<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_setstakey_cmd(padapter, (unsigned=
 char *)psta, true);<br>
&gt; &gt;=C2=A0 }<br>
&gt; &gt; @@ -153,8 +154,8 @@ static inline void handle_group_key(struct ie=
ee_param *param,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapte=
r-&gt;registrypriv.power_mgnt &gt; PS_MODE_ACTIVE) {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (padapter-&gt;registrypriv.power_mgnt !=3D padapter-&gt=
;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv.pwr_mode)<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_timer(&amp;(padapter-&gt;mlme=
priv.dhcp_timer),<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 60000);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_timer(&amp;(padapter-&gt;mlmep=
riv.dhcp_timer),<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 here ^<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0jiffies + msecs_to_jiffies(60000));<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;=C2=A0 }<br>
&gt; &gt;<br>
&gt;<br>
</p>

--f46d0418255858b617050fc6b47a--

