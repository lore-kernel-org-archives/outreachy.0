X-GM-THRID: 6674267883353145344
X-Received: by 2002:a24:56cf:: with SMTP id o198mr296141itb.12.1553996886630;
        Sat, 30 Mar 2019 18:48:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1808967itg.0.canary-gmail; Sat,
 30 Mar 2019 18:48:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQlqEnJUilwk0ILR2F+Q5jLtk/7LIfyZ3fWIYMyV6gM3RHOEkQgRPYhDPCZr4xOYuz+/w2
X-Received: by 2002:a24:1fc8:: with SMTP id d191mr4418589itd.29.1553996885659;
        Sat, 30 Mar 2019 18:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553996885; cv=none;
        d=google.com; s=arc-20160816;
        b=kDrsmtpLmTI0/BnZZBSpDPfNHuSz7nXJTVen7dvb9+sMS1ZZYbJ6xCvKDctQ0LtZBk
         LkMil5m/8ZBgZK/ip40LPW0TpjSZwzNOCasZ0Erogx2qJ88Z9xx7KWuwOtaeRvVEo7na
         eWK1WbpDQTw80HInDfGIZFKXXr6Sk5ODJUnnEPou+NV1SDnYs9wQaXLs3LiIZkDz+09u
         vKXJ/7x59OP6o+fZHKi3hJj5a/lCrqnErBWwnIUjqOhMBis3TAHyU4itRISBUGHgnchO
         iB67qXHZ1iLG3UrMt0affc91y7KwUmlC4s8z2ij/HgWauFCTdrgVkyV44tHpAu1/EbGK
         9o/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CbBRPXAAksYJuL52uIEdad4ahT6jl5iSoTMvedXeYNE=;
        b=IU8CpUSeQ+lB1oNjmGIER95HmBVJztkeLde+SZ0oIjj6tH4akw8/e7GnxYk3nb/S04
         sLH0dj+CuFbaW3bLe24tGz3AW8vvZ/adzoGgfu1aGpTHx9Epv8BGqET7RPh+T30RCVuC
         NCXRMS2QMVx/lv4Xh7GjyTiY0fQNE/TuTWP5Yffp+XCFfXyYCk1OXw+srT+vOxoTzm14
         SOr49OXGEpx1LG9QKTwEvVaBmZFSRcJD5Au7eEkmiJuD7zldSqvgmZ3eLVg1MYRpSoZx
         euSHq1eeapgHZc1b8yTeBmEG2kcYr4JCQxuTcp3T8YHRrwt9MqJzvjm5nw3cmLBDXXhL
         xQ7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9CtaGWP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id t201si337450itb.2.2019.03.30.18.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 18:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R9CtaGWP;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id i21so4574683oib.11
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 18:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CbBRPXAAksYJuL52uIEdad4ahT6jl5iSoTMvedXeYNE=;
        b=R9CtaGWPUEJMH/As/GjYc3KP18utnfKm7vBagevSboFlGoyqbextjquIAqEtacRcEj
         CcCb8lqYGOaCHR0tupgDSHB69oU3Cg4WzjwZ5vUXuTwIzy+ghdbv8Z7Lntq+7KAFUAvA
         bC9QqL17uB4jC1naYsQ5u9nKcYpZen0m/YBE31VewAvlMNXZvv+mrTSNuoasZo1iGWWU
         R2jUEffZOt3pB6CB1wVpbExWUzdRn6G/rJGN0dcQ8PEN07T8FMFvtAPcJU2AzKDP9BHq
         6SBYUxr3RgIl5atzkbf5yTpCU/f+GWN1h3e8czuTwDMXoMkvBzOGv6VZFJNrleGIvvNN
         ugHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CbBRPXAAksYJuL52uIEdad4ahT6jl5iSoTMvedXeYNE=;
        b=ioZfkCYE7bKtnx5JpHAG791tmqUIsU7v8cTDk3JZq6OjqrUryCYYMveGm7i/aLOsUK
         1yahqyaGOtl6EZLc+qe4B+0iFTBDErODSLRcPcyouD8xecJpZaEBsWrpEh/eloQS0W20
         UqE+7eJ0WUE8J3I+6q+bzq6uX1MT+uWGlLxUjZOpALjX+danpyEq33uWzEGggJji+W9x
         iqoULlkohQUYEJ2XmKxhAeX6fFAbxY4p4kfoPvOp6WqPmpYOisRsF9nBKilfX/7AN8Om
         L3Xt8x7tfQ+wINYewt02a8LGfKqmCKEfmLW8ioIcHQCdzbQSUsdWvFccYB1ZLK4BrPYW
         CbbQ==
X-Gm-Message-State: APjAAAWqzjMxEl5bH1QKKBOnwVKkvGDmPMh7JtOMIR+9V89L0dh1SYkz
	fqxqPcYYxG6jjkoDiGK8o3OesW10GOHZAnzGge8=
X-Received: by 2002:aca:f189:: with SMTP id p131mr7932892oih.89.1553996885054;
 Sat, 30 Mar 2019 18:48:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190330192742.65250-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903302032350.2608@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903302032350.2608@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sun, 31 Mar 2019 07:17:46 +0530
Message-ID: <CAPnhUpZaQUFhGqmZQwNCaoKA=Lj0QJBv5GzchW52AF2Nuqxk-g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/7] staging: rtl8712: use list macros
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000050de2805855a1877"

--00000000000050de2805855a1877
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar, 2019, 1:02 AM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Himadri Pandya wrote:
>
> > This patchset
> > -  Replaces usage of container_of with list_entry
> > -  Replaces a while loop with list_for_each
> > -  Removes an unnecessary NULL check
>
> It would be good to redo all of the log messages to explain why the change
> is correct.
>
> julia
>

Sure. Sending version 3 with explanation.

Thank you.

- Himadri


> >
> > V2:
> > - Include new patches for using list_for_each and removing unnecessary
> >   NULL check
> >
> > Himadri Pandya (7):
> >   staging: rtl8712: use list_entry in function _r8712_find_network
> >   staging: rtl8712: use list_for_each in function _r8712_find_network
> >   staging: rtl8712: use list_entry in function _free_network_queue
> >   staging: rtl8712: use list_entry in function
> >     r8712_get_oldest_wlan_network
> >   staging: rtl8712: use list_entry in function update_scanned_network
> >   staging: rtl8712: remove unnecessary NULL check
> >   staging: rtl8712: use list_entry in function
> >     r8712_select_and_join_from_scan
> >
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------
> >  1 file changed, 7 insertions(+), 10 deletions(-)
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190330192742.65250-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--00000000000050de2805855a1877
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, 31 Mar, 2019, 1:02 AM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; This patchset<br>
&gt; -=C2=A0 Replaces usage of container_of with list_entry<br>
&gt; -=C2=A0 Replaces a while loop with list_for_each<br>
&gt; -=C2=A0 Removes an unnecessary NULL check<br>
<br>
It would be good to redo all of the log messages to explain why the change<=
br>
is correct.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Sure. Sending version 3 with explanation.=C2=A0</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Thank you.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">- Himadri</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; V2:<br>
&gt; - Include new patches for using list_for_each and removing unnecessary=
<br>
&gt;=C2=A0 =C2=A0NULL check<br>
&gt;<br>
&gt; Himadri Pandya (7):<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_entry in function _r8712_find_n=
etwork<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_for_each in function _r8712_fin=
d_network<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_entry in function _free_network=
_queue<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_entry in function<br>
&gt;=C2=A0 =C2=A0 =C2=A0r8712_get_oldest_wlan_network<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_entry in function update_scanne=
d_network<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: remove unnecessary NULL check<br>
&gt;=C2=A0 =C2=A0staging: rtl8712: use list_entry in function<br>
&gt;=C2=A0 =C2=A0 =C2=A0r8712_select_and_join_from_scan<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------<br=
>
&gt;=C2=A0 1 file changed, 7 insertions(+), 10 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190330192742.65250-1-himadri18.07%40gmai=
l.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.googl=
e.com/d/msgid/outreachy-kernel/20190330192742.65250-1-himadri18.07%40gmail.=
com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
</blockquote></div></div></div>

--00000000000050de2805855a1877--

