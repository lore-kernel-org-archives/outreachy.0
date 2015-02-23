X-GM-THRID: 2499198058496
X-Received: by 10.112.25.7 with SMTP id y7mr1590290lbf.21.1424722002146;
        Mon, 23 Feb 2015 12:06:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls106857lac.47.gmail; Mon, 23 Feb
 2015 12:06:41 -0800 (PST)
X-Received: by 10.112.126.194 with SMTP id na2mr1318722lbb.18.1424722001644;
        Mon, 23 Feb 2015 12:06:41 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si761537wib.2.2015.02.23.12.06.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id bs8so20611037wib.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=IjypmAG9rbjRv77O7AkV9tCuYk3GLG0P20TU8PaeDOA=;
        b=wFslM+B1n6GrCK9WECgmb6qb8mkXphgUxlfO31u/at8oXkWkJ3jjUP8NpLn8T9z/lE
         zZydvDTF5r/yAtNDCz6/YTTmXznm39kocHNWjdoPG/UVYpT3ryJc/YPOTtdOnLbBKzHH
         1LZ5MCSP99HNkSVCaQU2NM3W4AeCZ38KBuQfxcbsjOwzo/dWD4UzqJO7Os6+HVz5t+1J
         KtfSxswtoP3sI8eJiNZ9izHc/L7y5B8v0LDa0tA5FDzRok99Y7YOyKl+Bew04Whv8Sms
         BpAOr8TQM97yRuCIyUjuXTzsBbkUyZ8OaMwZ+VGnJO95iV4jrwwdya1NHhCWSxvaRVls
         mLHw==
MIME-Version: 1.0
X-Received: by 10.180.221.232 with SMTP id qh8mr18755513wic.19.1424722000433;
 Mon, 23 Feb 2015 12:06:40 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 12:06:40 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 12:06:40 -0800 (PST)
In-Reply-To: <54EB8516.2080606@gmail.com>
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>
	<54EB81D4.30906@gmail.com>
	<CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>
	<54EB8516.2080606@gmail.com>
Date: Tue, 24 Feb 2015 01:36:40 +0530
Message-ID: <CAK-LDbJMCxBbrzDRnjKGygYz7r70pyC-zELMOR4525u7HRiDKg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113601c0bd6710050fc6f03a

--001a113601c0bd6710050fc6f03a
Content-Type: text/plain; charset=UTF-8

On Feb 24, 2015 1:22 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>
> On 02/23/15 14:49, Vaishali Thakkar wrote:
> > On Feb 24, 2015 1:09 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
> >>
> >> On 02/23/15 05:56, Vaishali Thakkar wrote:
> >>> This patch introduces the use of API function mod_timer
> >>> instead of driver specific function as it is a more
> >>> efficient and standard way to update the expire field of
> >>> an active timer.
> >>>
> >>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >>> ---
> >>> Changes since v1:
> >>>       -Edit commit message
> >>>       -Remove unnecessory parenthesis
> >>>       -Align second parameter of function
> >>>        mod_timer properly
> >>>
> >>>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
> >>>  1 file changed, 4 insertions(+), 3 deletions(-)
> >>
> >> I like this patch!
> >>
> >> However if you start getting rid of _set_timer() from a driver like
> >> this, you should try and remove all instances, and then get rid of all
> >> uses of _set_timer().
> >
> > Yes. Actually I sent this patch for mentors' reviews. I thought if this
> > will be accepted then I will go for sending more patches as there are
many
> > instances of _set_timer() in this driver and in other network drivers as
> > well. And then I can remove those definitions once all cases are
handled.
> >
> > Also, network drivers are using driver specific functions where we can
use
> > setup_ timer() function. So, I will go for it as well.
>
> Sounds great - I recommend you focus on one change, so start out with
> one patch that eliminates _set_timer() and then do follow-on patches
> where you convert other portions of code to use setup_timer().

Ok. Firstly, I am planning to eliminate use of _set_timer() completly in
all network drivers and then I will go for setup_timer(). Is it right
strategy?

I am just little confused about sending them in series. Can I send a patch
series [ one patch for each driver] for eliminating _set_timer()?? And then
one different patch series goes for setup_timer().

> Cheers,
> Jes
>
> >> In addition you are still leaving some unnecessary parenthesis in place
> >> - see below.
> >
> > Oops! yeah. I will remove them in next version.
> >
> >> Cheers,
> >> Jes
> >>
> >>
> >>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>> index 9bb364f..0ce8e9d 100644
> >>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct
> > sta_info *psta,
> >>>               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
> >>>                       key[24]), 8);
> >>>               padapter->securitypriv. busetkipkey = false;
> >>> -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
> >>> +             mod_timer(&padapter->securitypriv.tkip_timer,
> >>> +                       jiffies + msecs_to_jiffies(50));
> >>>       }
> >>>       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
> >>>  }
> >>> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct
> > ieee_param *param,
> >>>               if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE)
{
> >>>                       if (padapter->registrypriv.power_mgnt !=
> > padapter->
> >>>                           pwrctrlpriv.pwr_mode)
> >>> -
> >  _set_timer(&(padapter->mlmepriv.dhcp_timer),
> >>> -                                        60000);
> >>> +
> >  mod_timer(&(padapter->mlmepriv.dhcp_timer),
> >>                                       here ^
> >>> +                                       jiffies +
> > msecs_to_jiffies(60000));
> >>>               }
> >>>       }
> >>>  }
> >>>
> >>
> >
>

--001a113601c0bd6710050fc6f03a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Feb 24, 2015 1:22 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"mailto:jes=
.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 02/23/15 14:49, Vaishali Thakkar wrote:<br>
&gt; &gt; On Feb 24, 2015 1:09 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"=
mailto:jes.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On 02/23/15 05:56, Vaishali Thakkar wrote:<br>
&gt; &gt;&gt;&gt; This patch introduces the use of API function mod_timer<b=
r>
&gt; &gt;&gt;&gt; instead of driver specific function as it is a more<br>
&gt; &gt;&gt;&gt; efficient and standard way to update the expire field of<=
br>
&gt; &gt;&gt;&gt; an active timer.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Signed-off-by: Vaishali Thakkar &lt;<a href=3D"mailto:vth=
akkar1994@gmail.com">vthakkar1994@gmail.com</a>&gt;<br>
&gt; &gt;&gt;&gt; ---<br>
&gt; &gt;&gt;&gt; Changes since v1:<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Edit commit message<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Remove unnecessory parenthesis=
<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Align second parameter of func=
tion<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 mod_timer properly<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 +=
+++---<br>
&gt; &gt;&gt;&gt;=C2=A0 1 file changed, 4 insertions(+), 3 deletions(-)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I like this patch!<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; However if you start getting rid of _set_timer() from a drive=
r like<br>
&gt; &gt;&gt; this, you should try and remove all instances, and then get r=
id of all<br>
&gt; &gt;&gt; uses of _set_timer().<br>
&gt; &gt;<br>
&gt; &gt; Yes. Actually I sent this patch for mentors&#39; reviews. I thoug=
ht if this<br>
&gt; &gt; will be accepted then I will go for sending more patches as there=
 are many<br>
&gt; &gt; instances of _set_timer() in this driver and in other network dri=
vers as<br>
&gt; &gt; well. And then I can remove those definitions once all cases are =
handled.<br>
&gt; &gt;<br>
&gt; &gt; Also, network drivers are using driver specific functions where w=
e can use<br>
&gt; &gt; setup_ timer() function. So, I will go for it as well.<br>
&gt;<br>
&gt; Sounds great - I recommend you focus on one change, so start out with<=
br>
&gt; one patch that eliminates _set_timer() and then do follow-on patches<b=
r>
&gt; where you convert other portions of code to use setup_timer().</p>
<p>Ok. Firstly, I am planning to eliminate use of _set_timer() completly in=
 all network drivers and then I will go for setup_timer(). Is it right stra=
tegy?</p>
<p>I am just little confused about sending them in series. Can I send a pat=
ch series [ one patch for each driver] for eliminating _set_timer()?? And t=
hen one different patch series goes for setup_timer().</p>
<p>&gt; Cheers,<br>
&gt; Jes<br>
&gt;<br>
&gt; &gt;&gt; In addition you are still leaving some unnecessary parenthesi=
s in place<br>
&gt; &gt;&gt; - see below.<br>
&gt; &gt;<br>
&gt; &gt; Oops! yeah. I will remove them in next version.<br>
&gt; &gt;<br>
&gt; &gt;&gt; Cheers,<br>
&gt; &gt;&gt; Jes<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt; diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.=
c<br>
&gt; &gt; b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt;&gt;&gt; index 9bb364f..0ce8e9d 100644<br>
&gt; &gt;&gt;&gt; --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt;&gt;&gt; +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt;&gt;&gt; @@ -129,7 +129,8 @@ static inline void handle_pairwise_ke=
y(struct<br>
&gt; &gt; sta_info *psta,<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mem=
cpy(psta-&gt;tkiprxmickey. skey, &amp;(param-&gt;u.crypt.<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0key[24]), 8);<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pad=
apter-&gt;securitypriv. busetkipkey =3D false;<br>
&gt; &gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_set_tim=
er(&amp;padapter-&gt;securitypriv.tkip_timer, 50);<br>
&gt; &gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mod_time=
r(&amp;padapter-&gt;securitypriv.tkip_timer,<br>
&gt; &gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(50));<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_setstakey_cmd(padapter, (=
unsigned char *)psta, true);<br>
&gt; &gt;&gt;&gt;=C2=A0 }<br>
&gt; &gt;&gt;&gt; @@ -153,8 +154,8 @@ static inline void handle_group_key(s=
truct<br>
&gt; &gt; ieee_param *param,<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if =
(padapter-&gt;registrypriv.power_mgnt &gt; PS_MODE_ACTIVE) {<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;registrypriv.power_mgnt !=3D<br=
>
&gt; &gt; padapter-&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv.pwr_mode)<br>
&gt; &gt;&gt;&gt; -<br>
&gt; &gt;=C2=A0 _set_timer(&amp;(padapter-&gt;mlmepriv.dhcp_timer),<br>
&gt; &gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 60000);<br>
&gt; &gt;&gt;&gt; +<br>
&gt; &gt;=C2=A0 mod_timer(&amp;(padapter-&gt;mlmepriv.dhcp_timer),<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0here ^<br>
&gt; &gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0jiffies +<br>
&gt; &gt; msecs_to_jiffies(60000));<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<b=
r>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt;&gt;=C2=A0 }<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt;<br>
</p>

--001a113601c0bd6710050fc6f03a--

