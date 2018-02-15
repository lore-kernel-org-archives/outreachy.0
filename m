X-GM-THRID: 6522422209365934080
X-Received: by 2002:a17:902:6849:: with SMTP id f9-v6mr534206pln.44.1518701321044;
        Thu, 15 Feb 2018 05:28:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.67.4 with SMTP id j4ls4253249pgq.6.gmail; Thu, 15 Feb 2018
 05:28:39 -0800 (PST)
X-Google-Smtp-Source: AH8x226neX3Er3ofOURO05g67TZM4GxKYuOEFOs6OHm3/3+Mg68o8QuEYZcvPJcrM+zBtyO6CV5U
X-Received: by 10.99.109.141 with SMTP id i135mr530264pgc.31.1518701319393;
        Thu, 15 Feb 2018 05:28:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518701319; cv=none;
        d=google.com; s=arc-20160816;
        b=VQeAYGAAR/vyl4DCLbyA+9ctNw2n6iaKDpfnrasGOoIP2QOMLM3YFRMf0Ndw7/gMvQ
         FBZh2Pw+AUWgbpWql83b0hrwmbd+e2AdfQN88+7l6Ej96iiZRuQVGjd1fXGCM1Qtb2o4
         /+YVXx1oLLTigz+8ulZ6GKBP1/ZFnqITBj685dqdp6+TWtErB88siPKvoh0Xyw6DP/L0
         /vRohWKbfeGV84BouedBAB0nJ6UTZ4LPLSlnTNtvXr5luY7Byk2wUhFcMLVGWTXcaXe2
         t9BdIWfF5B54F2ZlDdFwbKWt6xQbdeOn3V2nE71qh0H2vHnmBPXXOk719AIOZcfdVEsc
         ACvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=IX6buW5afc3cifAmwuJNTBAIpxTADOpLJvbJWaYFu0U=;
        b=Hf+f63q/XvCxjkVglmUQ2mb0j/PzwzO3YqRcEyfj7JkiWet/81KXYq0nNKlcVMCcv+
         XKVaYEcIEA4g7JshYWgp/Gj0v6pm+qaadqEB7dCpcHXeYj+mrJ4bJUt+LVMJrZoBr+js
         XqLjaNf0BNISwLbfZPnOB6Tl0vLy7sBlxzSZCiXUueabMWoLG8vcEH4kG/FyX5GtD8Ht
         UkeVekDzyxoWcDM1PEZlcrw/evx8M0ecxPQF38qhSw/EhqISnK3tXr68xIt46IXAS1Z4
         ZBmAA0XbPabUedOXX9ZiZZT27/ESQB7eix+XzJQUWC13tqwB2/69PqRkkC62KMeqpnRA
         5S3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s3fNAMAE;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-oi0-x235.google.com (mail-oi0-x235.google.com. [2607:f8b0:4003:c06::235])
        by gmr-mx.google.com with ESMTPS id a11si340413pfi.2.2018.02.15.05.28.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 05:28:39 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::235 as permitted sender) client-ip=2607:f8b0:4003:c06::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s3fNAMAE;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x235.google.com with SMTP id x21so19031248oie.13
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 05:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=IX6buW5afc3cifAmwuJNTBAIpxTADOpLJvbJWaYFu0U=;
        b=s3fNAMAElkS/nA1E/DhT3uWzqIw4cfFukyAp2vQ3/hD4qu93q69L3TCLCm6nBqJJDF
         U0oELZDi2pMORuUjPWE2DxEwsyUr4VchlfLZ7ou7hR8WomMNcVq2L/iK6MsG19Qk1KsC
         XWTR/8QfTOWn3U3mPq05qF3JdzMgiWT62LRjCs/FuTD8jfEv6u0e4+EPDpcCHlF/r9Zx
         Aij1scVcHGbBrx8l+vEBVg+tKjlyCilBDHzkfFHJ/nzlcckh9yhPcwZ3ECUD8Hw06yK+
         YYWsaghxXUwEdm+JmOlbcNQBIUSHramNCha9eMotWEVIkaei6ORXvg/8S37Lg+ymTRma
         BitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=IX6buW5afc3cifAmwuJNTBAIpxTADOpLJvbJWaYFu0U=;
        b=Vl1GgBTa8UPlW05H/m883RyATwfn93t8zVwhiHWG6LNLeqLlr55hbH8xpzTVBCeXZl
         hlXhloxDjEwbXd0FnqPM/uBHK7yB3DkMhbGYtZgXOau74zIFGHlRV/rty+JV3PS66ksw
         Aqp0JsYOAxBzqwDUb/Vdi6//2urMDHlNoMAnIXJNlQV5eD5xl3IFX5OhseRaO4kpD0Ko
         rBGVF0XurEouE2f9JP6nUr3TK5JCBMB3F4V0E1zXZf+LmxnoBpBKqXFmantkFe0X0Lgq
         jnCKvtJ8H9VYYoz83zGuW3hwvXfol9/U8mxVl/3/tB1Wy356rpBeDxD/wAjs2ZDQ6Emd
         h2SQ==
X-Gm-Message-State: APf1xPCpxnGyDeM5HqiQbSfcTPopRCMDjm+9Q/9i+7GI5CFWNrh9SnOH
	pa1zJ+XnpaVsKiA4ncmMLvYvBg2hwiOfh8IMNwU=
X-Received: by 10.202.71.211 with SMTP id u202mr1830663oia.227.1518701318232;
 Thu, 15 Feb 2018 05:28:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.150.70 with HTTP; Thu, 15 Feb 2018 05:28:37 -0800 (PST)
In-Reply-To: <0e16c6cf-6635-40bf-8fdc-afb0a37eb181@googlegroups.com>
References: <alpine.DEB.2.20.1802141547450.3340@hadrien> <0e16c6cf-6635-40bf-8fdc-afb0a37eb181@googlegroups.com>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Thu, 15 Feb 2018 14:28:37 +0100
Message-ID: <CAO393ADdoEgEJs4QQNsYEN+t+veDVg7steF8xcKnO-_91R6x7g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Outreachy kernel wiki
To: Ishita Tripathi <sakurakhadag@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="001a113e475497e0d9056540346f"

--001a113e475497e0d9056540346f
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 15, 2018 at 2:08 PM, Ishita Tripathi <sakurakhadag@gmail.com>
wrote:

> Hello ma'am
> I was setting up Ubuntu using the kernelnewbies wiki. The *link for
> Ubuntu 12.04 (64 bit) *provided on the page https://kernelnewbies.
> org/OutreachyfirstpatchAlt?action=show&redirect=OPWfirstpatchAlt",
> redirects to the page "https://www.ubuntu.com/download/desktop/thank-you?
> country=IN&version=14.04.1&architecture=amd64", which shows error "*404
> Not Found*" instead of downloading. If I click on the 'download now' link
> on the page, I get the error, "*Not Found. The requested URL
> /ubuntureleases/14.04.1/ubuntu-14.04.1-desktop-amd64.iso was not found on
> this server.* "
> Could you please update the links?
> Thank you.
> Ishita
>
>
Hello Ishita :)

The links have now been updated. Thanks for letting us know.


> On Wednesday, 14 February 2018 20:19:21 UTC+5:30, Julia Lawall wrote:
>>
>> Hello,
>>
>> To start making a contribution, you should follow the tutorial at this
>> URL:
>>
>> https://kernelnewbies.org/Outreachyfirstpatch
>>
>> Unfortunately, the wiki that hosts the Outreachy kernel information is
>> not
>> so stable at the moment.  If you get an nginx error, please just try
>> again
>> in a minute or so.
>>
>> thanks,
>> julia
>>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/0e16c6cf-6635-40bf-8fdc-
> afb0a37eb181%40googlegroups.com
> <https://groups.google.com/d/msgid/outreachy-kernel/0e16c6cf-6635-40bf-8fdc-afb0a37eb181%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--001a113e475497e0d9056540346f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 15, 2018 at 2:08 PM, Ishita Tripathi <span dir=3D"ltr">&lt;=
<a href=3D"mailto:sakurakhadag@gmail.com" target=3D"_blank">sakurakhadag@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">Hello ma&#39;am<div>I was setting up Ubuntu using the kernelnewbies w=
iki. The <b>link for Ubuntu 12.04 (64 bit) </b>provided on the page=C2=A0<a=
 href=3D"https://kernelnewbies.org/OutreachyfirstpatchAlt?action=3Dshow&amp=
;redirect=3DOPWfirstpatchAlt" target=3D"_blank">https://kernelnewbies.<wbr>=
org/OutreachyfirstpatchAlt?<wbr>action=3Dshow&amp;redirect=3D<wbr>OPWfirstp=
atchAlt</a>&quot;, redirects to the page &quot;<a href=3D"https://www.ubunt=
u.com/download/desktop/thank-you?country=3DIN&amp;version=3D14.04.1&amp;arc=
hitecture=3Damd64" target=3D"_blank">https://www.ubuntu.com/<wbr>download/d=
esktop/thank-you?<wbr>country=3DIN&amp;version=3D14.04.1&amp;<wbr>architect=
ure=3Damd64</a>&quot;, which shows error &quot;<b>404 Not Found</b>&quot; i=
nstead of downloading. If I click on the &#39;download now&#39; link on the=
 page, I get the error, &quot;<b>Not Found. The requested URL /ubuntureleas=
es/14.04.1/<wbr>ubuntu-14.04.1-desktop-amd64.<wbr>iso was not found on this=
 server.</b>=C2=A0&quot;</div><div>Could you please update the links?=C2=A0=
</div><div>Thank you.</div><div>Ishita</div><span class=3D""><div><br></div=
></span></div></blockquote><div><br></div><div>Hello Ishita :)</div><div><b=
r></div><div>The links have now been updated. Thanks for letting us know.</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span =
class=3D""><div>On Wednesday, 14 February 2018 20:19:21 UTC+5:30, Julia Law=
all  wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-left:=
0.8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,
<br>
<br>To start making a contribution, you should follow the tutorial at this
<br>URL:
<br>
<br><a href=3D"https://kernelnewbies.org/Outreachyfirstpatch" rel=3D"nofoll=
ow" target=3D"_blank">https://kernelnewbies.org/Outr<wbr>eachyfirstpatch</a=
>
<br>
<br>Unfortunately, the wiki that hosts the Outreachy kernel information is =
not
<br>so stable at the moment.=C2=A0 If you get an nginx error, please just t=
ry again
<br>in a minute or so.
<br>
<br>thanks,
<br>julia
<br></blockquote></div></span></div><span class=3D"">

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.com" ta=
rget=3D"_blank">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<wbr>com</a>=
.<br></span>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/0e16c6cf-6635-40bf-8fdc-afb0a37eb181%40googlegr=
oups.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">http=
s://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>0e16c6cf-6635-40bf=
-8fdc-<wbr>afb0a37eb181%40googlegroups.<wbr>com</a>.<div class=3D"HOEnZb"><=
div class=3D"h5"><br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" targ=
et=3D"_blank">https://groups.google.com/d/<wbr>optout</a>.<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Shraddha<br></div></div>
</div></div>

--001a113e475497e0d9056540346f--

