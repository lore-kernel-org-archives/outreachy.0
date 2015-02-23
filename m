X-GM-THRID: 2499198058496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e241efa4d6dbf077
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.34 with SMTP id w2mr1570337wix.2.1424722670282;
        Mon, 23 Feb 2015 12:17:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.133 with SMTP id dk5ls620890wib.47.gmail; Mon, 23 Feb
 2015 12:17:50 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr1602635wjc.7.1424722669990;
        Mon, 23 Feb 2015 12:17:49 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id r6si777366wix.0.2015.02.23.12.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:17:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id q59so21172464wes.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=GJRfpJxqSx2nA2VNekvxNH9vU8MkBY2ftN+ZfvTAXj4=;
        b=mYXauqubyrnsz6ymJtv17fmb+Y4kLqYYtSGwRNhQ31bZpAO5io9hmJDkM45pTp1N+x
         U9B6BkR6z3iCaIXwKDMTflIgw7GhDj1ahn5icHLTYIis1ov8Un/tzaUkY/ypbyG64JF/
         RDeI3pgbZBDMYqs4tJ4SuU3/MswyWVVjAVCVew77cTsyehuaWFubDcqhSm56X6kMe7BZ
         FS+nr9gWmTiKG/+LOBCQ1lxre6qid/2iG8Q9Qp1+CTV/vgKScn8FjhoBI4p58D6u5ty7
         FFHhni1i3/s9c7O/KXIJIapdWRpXrBaV0taE9Mop0yktozYGHaJPfL02CXa8yEfnb3na
         d6QQ==
MIME-Version: 1.0
X-Received: by 10.180.85.70 with SMTP id f6mr23641453wiz.22.1424722669897;
 Mon, 23 Feb 2015 12:17:49 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 12:17:49 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Mon, 23 Feb 2015 12:17:49 -0800 (PST)
In-Reply-To: <54EB89C6.5050200@gmail.com>
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>
	<54EB81D4.30906@gmail.com>
	<CAK-LDb+Vt8xkH269yKTE+=3YuvaopYDRMmBGbTKU70cD-G5cUQ@mail.gmail.com>
	<54EB8516.2080606@gmail.com>
	<CAK-LDbJMCxBbrzDRnjKGygYz7r70pyC-zELMOR4525u7HRiDKg@mail.gmail.com>
	<54EB89C6.5050200@gmail.com>
Date: Tue, 24 Feb 2015 01:47:49 +0530
Message-ID: <CAK-LDb+jxBNO2h7-xiDDejfD74hPdkNdfyk_Sw69sAE+qfCS7w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=f46d04182558a48aa9050fc71891

--f46d04182558a48aa9050fc71891
Content-Type: text/plain; charset=UTF-8

On Feb 24, 2015 1:42 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
>
> On 02/23/15 15:06, Vaishali Thakkar wrote:
> > On Feb 24, 2015 1:22 AM, "Jes Sorensen" <jes.sorensen@gmail.com> wrote:
> >>
> >> On 02/23/15 14:49, Vaishali Thakkar wrote:
> >>> On Feb 24, 2015 1:09 AM, "Jes Sorensen" <jes.sorensen@gmail.com>
wrote:
> >>>>
> >>>> On 02/23/15 05:56, Vaishali Thakkar wrote:
> >>>>> This patch introduces the use of API function mod_timer
> >>>>> instead of driver specific function as it is a more
> >>>>> efficient and standard way to update the expire field of
> >>>>> an active timer.
> >>>>>
> >>>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> >>>>> ---
> >>>>> Changes since v1:
> >>>>>       -Edit commit message
> >>>>>       -Remove unnecessory parenthesis
> >>>>>       -Align second parameter of function
> >>>>>        mod_timer properly
> >>>>>
> >>>>>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
> >>>>>  1 file changed, 4 insertions(+), 3 deletions(-)
> >>>>
> >>>> I like this patch!
> >>>>
> >>>> However if you start getting rid of _set_timer() from a driver like
> >>>> this, you should try and remove all instances, and then get rid of
all
> >>>> uses of _set_timer().
> >>>
> >>> Yes. Actually I sent this patch for mentors' reviews. I thought if
this
> >>> will be accepted then I will go for sending more patches as there are
> > many
> >>> instances of _set_timer() in this driver and in other network drivers
as
> >>> well. And then I can remove those definitions once all cases are
> > handled.
> >>>
> >>> Also, network drivers are using driver specific functions where we can
> > use
> >>> setup_ timer() function. So, I will go for it as well.
> >>
> >> Sounds great - I recommend you focus on one change, so start out with
> >> one patch that eliminates _set_timer() and then do follow-on patches
> >> where you convert other portions of code to use setup_timer().
> >
> > Ok. Firstly, I am planning to eliminate use of _set_timer() completly in
> > all network drivers and then I will go for setup_timer(). Is it right
> > strategy?
> >
> > I am just little confused about sending them in series. Can I send a
patch
> > series [ one patch for each driver] for eliminating _set_timer()?? And
then
> > one different patch series goes for setup_timer().
>
> I would recommend one patch series per driver, as opposed to one series
> for all drivers. So for each driver I would do:
>
> 1: Patch to eliminate _set_timer()
> 2: Patch(es) to convert code to setup_timer()
>
> It is better to do one patch set per driver, as it allows individual
> driver maintainers to apply them without touching code they do not
> maintainer.

Ok. Yes. This makes sense. I will send them as per your recommendation.

Thank You

> Cheers,
> Jes
>
>
> >> Cheers,
> >> Jes
> >>
> >>>> In addition you are still leaving some unnecessary parenthesis in
place
> >>>> - see below.
> >>>
> >>> Oops! yeah. I will remove them in next version.
> >>>
> >>>> Cheers,
> >>>> Jes
> >>>>
> >>>>
> >>>>> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>> b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>>>> index 9bb364f..0ce8e9d 100644
> >>>>> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>>>> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> >>>>> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct
> >>> sta_info *psta,
> >>>>>               memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
> >>>>>                       key[24]), 8);
> >>>>>               padapter->securitypriv. busetkipkey = false;
> >>>>> -             _set_timer(&padapter->securitypriv.tkip_timer, 50);
> >>>>> +             mod_timer(&padapter->securitypriv.tkip_timer,
> >>>>> +                       jiffies + msecs_to_jiffies(50));
> >>>>>       }
> >>>>>       r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
> >>>>>  }
> >>>>> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct
> >>> ieee_param *param,
> >>>>>               if (padapter->registrypriv.power_mgnt >
PS_MODE_ACTIVE)
> > {
> >>>>>                       if (padapter->registrypriv.power_mgnt !=
> >>> padapter->
> >>>>>                           pwrctrlpriv.pwr_mode)
> >>>>> -
> >>>  _set_timer(&(padapter->mlmepriv.dhcp_timer),
> >>>>> -                                        60000);
> >>>>> +
> >>>  mod_timer(&(padapter->mlmepriv.dhcp_timer),
> >>>>                                       here ^
> >>>>> +                                       jiffies +
> >>> msecs_to_jiffies(60000));
> >>>>>               }
> >>>>>       }
> >>>>>  }
> >>>>>
> >>>>
> >>>
> >>
> >
>

--f46d04182558a48aa9050fc71891
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br>
On Feb 24, 2015 1:42 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"mailto:jes=
.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 02/23/15 15:06, Vaishali Thakkar wrote:<br>
&gt; &gt; On Feb 24, 2015 1:22 AM, &quot;Jes Sorensen&quot; &lt;<a href=3D"=
mailto:jes.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On 02/23/15 14:49, Vaishali Thakkar wrote:<br>
&gt; &gt;&gt;&gt; On Feb 24, 2015 1:09 AM, &quot;Jes Sorensen&quot; &lt;<a =
href=3D"mailto:jes.sorensen@gmail.com">jes.sorensen@gmail.com</a>&gt; wrote=
:<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; On 02/23/15 05:56, Vaishali Thakkar wrote:<br>
&gt; &gt;&gt;&gt;&gt;&gt; This patch introduces the use of API function mod=
_timer<br>
&gt; &gt;&gt;&gt;&gt;&gt; instead of driver specific function as it is a mo=
re<br>
&gt; &gt;&gt;&gt;&gt;&gt; efficient and standard way to update the expire f=
ield of<br>
&gt; &gt;&gt;&gt;&gt;&gt; an active timer.<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Signed-off-by: Vaishali Thakkar &lt;<a href=3D"ma=
ilto:vthakkar1994@gmail.com">vthakkar1994@gmail.com</a>&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; ---<br>
&gt; &gt;&gt;&gt;&gt;&gt; Changes since v1:<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Edit commit message<br=
>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Remove unnecessory par=
enthesis<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Align second parameter=
 of function<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 mod_timer properly<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_ioctl_linux=
.c | 7 ++++---<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 1 file changed, 4 insertions(+), 3 deletion=
s(-)<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; I like this patch!<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; However if you start getting rid of _set_timer() from=
 a driver like<br>
&gt; &gt;&gt;&gt;&gt; this, you should try and remove all instances, and th=
en get rid of all<br>
&gt; &gt;&gt;&gt;&gt; uses of _set_timer().<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Yes. Actually I sent this patch for mentors&#39; reviews.=
 I thought if this<br>
&gt; &gt;&gt;&gt; will be accepted then I will go for sending more patches =
as there are<br>
&gt; &gt; many<br>
&gt; &gt;&gt;&gt; instances of _set_timer() in this driver and in other net=
work drivers as<br>
&gt; &gt;&gt;&gt; well. And then I can remove those definitions once all ca=
ses are<br>
&gt; &gt; handled.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Also, network drivers are using driver specific functions=
 where we can<br>
&gt; &gt; use<br>
&gt; &gt;&gt;&gt; setup_ timer() function. So, I will go for it as well.<br=
>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Sounds great - I recommend you focus on one change, so start =
out with<br>
&gt; &gt;&gt; one patch that eliminates _set_timer() and then do follow-on =
patches<br>
&gt; &gt;&gt; where you convert other portions of code to use setup_timer()=
.<br>
&gt; &gt;<br>
&gt; &gt; Ok. Firstly, I am planning to eliminate use of _set_timer() compl=
etly in<br>
&gt; &gt; all network drivers and then I will go for setup_timer(). Is it r=
ight<br>
&gt; &gt; strategy?<br>
&gt; &gt;<br>
&gt; &gt; I am just little confused about sending them in series. Can I sen=
d a patch<br>
&gt; &gt; series [ one patch for each driver] for eliminating _set_timer()?=
? And then<br>
&gt; &gt; one different patch series goes for setup_timer().<br>
&gt;<br>
&gt; I would recommend one patch series per driver, as opposed to one serie=
s<br>
&gt; for all drivers. So for each driver I would do:<br>
&gt;<br>
&gt; 1: Patch to eliminate _set_timer()<br>
&gt; 2: Patch(es) to convert code to setup_timer()<br>
&gt;<br>
&gt; It is better to do one patch set per driver, as it allows individual<b=
r>
&gt; driver maintainers to apply them without touching code they do not<br>
&gt; maintainer.</p>
<p>Ok. Yes. This makes sense. I will send them as per your recommendation.<=
/p>
<p>Thank You</p>
<p>&gt; Cheers,<br>
&gt; Jes<br>
&gt;<br>
&gt;<br>
&gt; &gt;&gt; Cheers,<br>
&gt; &gt;&gt; Jes<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; In addition you are still leaving some unnecessary pa=
renthesis in place<br>
&gt; &gt;&gt;&gt;&gt; - see below.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Oops! yeah. I will remove them in next version.<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; Cheers,<br>
&gt; &gt;&gt;&gt;&gt; Jes<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; diff --git a/drivers/staging/rtl8712/rtl871x_ioct=
l_linux.c<br>
&gt; &gt;&gt;&gt; b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c<br>
&gt; &gt;&gt;&gt;&gt;&gt; index 9bb364f..0ce8e9d 100644<br>
&gt; &gt;&gt;&gt;&gt;&gt; --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux=
.c<br>
&gt; &gt;&gt;&gt;&gt;&gt; +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux=
.c<br>
&gt; &gt;&gt;&gt;&gt;&gt; @@ -129,7 +129,8 @@ static inline void handle_pai=
rwise_key(struct<br>
&gt; &gt;&gt;&gt; sta_info *psta,<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0memcpy(psta-&gt;tkiprxmickey. skey, &amp;(param-&gt;u.crypt.<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0key[24]), 8);<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0padapter-&gt;securitypriv. busetkipkey =3D false;<br>
&gt; &gt;&gt;&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
_set_timer(&amp;padapter-&gt;securitypriv.tkip_timer, 50);<br>
&gt; &gt;&gt;&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
mod_timer(&amp;padapter-&gt;securitypriv.tkip_timer,<br>
&gt; &gt;&gt;&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0jiffies + msecs_to_jiffies(50));<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_setstakey_cmd(pad=
apter, (unsigned char *)psta, true);<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 }<br>
&gt; &gt;&gt;&gt;&gt;&gt; @@ -153,8 +154,8 @@ static inline void handle_gro=
up_key(struct<br>
&gt; &gt;&gt;&gt; ieee_param *param,<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (padapter-&gt;registrypriv.power_mgnt &gt; PS_MODE_ACTIVE)<br>
&gt; &gt; {<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;registrypriv.power_mgnt =
!=3D<br>
&gt; &gt;&gt;&gt; padapter-&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pwrctrlpriv.pwr_mode)<br>
&gt; &gt;&gt;&gt;&gt;&gt; -<br>
&gt; &gt;&gt;&gt;=C2=A0 _set_timer(&amp;(padapter-&gt;mlmepriv.dhcp_timer),=
<br>
&gt; &gt;&gt;&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 60000);<br>
&gt; &gt;&gt;&gt;&gt;&gt; +<br>
&gt; &gt;&gt;&gt;=C2=A0 mod_timer(&amp;(padapter-&gt;mlmepriv.dhcp_timer),<=
br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0here ^<br>
&gt; &gt;&gt;&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0jiffies +<br>
&gt; &gt;&gt;&gt; msecs_to_jiffies(60000));<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0}<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt;&gt;&gt;&gt;=C2=A0 }<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt;<br>
</p>

--f46d04182558a48aa9050fc71891--

