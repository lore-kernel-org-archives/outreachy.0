X-GM-THRID: 6390372862333550592
X-Received: by 10.99.125.27 with SMTP id y27mr338696pgc.144.1487915858432;
        Thu, 23 Feb 2017 21:57:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.28 with SMTP id j28ls6196156otb.40.gmail; Thu, 23 Feb
 2017 21:57:38 -0800 (PST)
X-Received: by 10.13.201.4 with SMTP id l4mr359878ywd.75.1487915858062;
        Thu, 23 Feb 2017 21:57:38 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id d20si98241itc.1.2017.02.23.21.57.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 21:57:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id r141so1806244ita.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 21:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iHVeEWXjkW7mgC02BtC/L4C5jKDQCX2uaLc+zkHH4A4=;
        b=Wcu6L24zjLTCcHCI+64rlKWSaY6dDQ7dFwKNS4HNbl+vu+TwHJQOihHMI3mHc3qk1V
         fB2BxgPwleknep2gC3A4AnF6kfCZqbwv2RCKOmBQBKOG38mwHM7BM2fe4LrYFDzETCdO
         z0yfQrQJY+lzWdycMMEUkzOFb3XcQ/bZGm9kdX5jaK6tSYKzcincmUhwPQgRspzjXFWb
         JmY7EO3vo2vJmL0JBqtcFcWqE5wtcvFUq6Z9NJoWC1oZZzGzi7BUKWTFYm2FlYo0A//g
         k2B9XB9DCqQZdHA3BRtNA9Na8BrYt57ooxKc++6f4GSxJUJTbKftSHBiF8NeaNhkwsqL
         TSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iHVeEWXjkW7mgC02BtC/L4C5jKDQCX2uaLc+zkHH4A4=;
        b=FmTqMACfLE3foIRd3kYVOEVkCqO3IKidc26L9hdOkgg3L7bS1p/8DnQeuEZvQAKdOS
         RspFDyuk+18u1/L5H/kIAPqrwRuc0TD0V23HOB6h7cd2qpiUXaCfCyghVmVP+R/SNZ0P
         wvZuJS7ZKVztIgzFrzG4F3dfGpuZKl8y9xxJikhVxWdVQqxXPWcbr1dm089udnYqQBG+
         8i96txFBq62WuISiaMI5zMLn1Q9DiwRYTMXwaHMA8jbxU/Hk0f4/TXZk/hvgBdZMmTe6
         wlJFJ+IWF3nJJuBI/HY9HzQWsEzer/Hm7m/fMLEiw5Ltx9KoI/366PTdwIokwqs9ZfAN
         1DDQ==
X-Gm-Message-State: AMke39kwDtnWZ3KYu/Q+WhjIMsB3oNctnbaaWr9pTlbdjL9cvok/chqbKLgKT575jJq59QXGdw688MgBo/eZsQ==
X-Received: by 10.36.64.198 with SMTP id n189mr1202312ita.6.1487915857812;
 Thu, 23 Feb 2017 21:57:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 23 Feb 2017 21:57:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702232144450.2103@hadrien>
References: <CAOCi2DE66sqkwAAQiZKNYcY5tWxg30n+qmrq3Yqb2-L1uPHqBA@mail.gmail.com>
 <alpine.DEB.2.20.1702232056220.2103@hadrien> <CAOCi2DFbaEUW4Nrwkq-AeaXT28xJyX5D0SRkoAyUNDfrijujkw@mail.gmail.com>
 <alpine.DEB.2.20.1702232144450.2103@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 24 Feb 2017 11:27:07 +0530
Message-ID: <CAOCi2DFVnwVCa3TGVMFLqcYcpqBBZey9fEc1XX7pPx=Mx5Z8jg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 3
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134f06229244c0549406843

--001a1134f06229244c0549406843
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 2:16 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Fri, 24 Feb 2017, Gargi Sharma wrote:
>
> > On Fri, Feb 24, 2017 at 1:27 AM, Julia Lawall <julia.lawall@lip6.fr>
wrote:
> > >
> > >
> > >
> > > On Thu, 23 Feb 2017, Gargi Sharma wrote:
> > >
> > > > Hi,
> > > >
> > > > Here's my Coccinelle script to handle NULL tests for the following
> > functions
> > > > kmalloc, devm_kzalloc, kmalloc_array, devm_ioremap, usb_alloc_urb,
> > > > alloc_netdev, dev_alloc_skb.
> > > >
> > > > @@
> > > > expression ptr;
> > > > position p;
> > > > statement s0;
> > > > @@
> > > >
> > > > ptr@p
=\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc
> > _
> > > > netdev\|dev_alloc_skb\)(...)
> > > > ... when != ptr
> > > >
> > > > if (
> > > > (
> > > > + !
> > > > ptr
> > > > - == NULL
> > > > )
> > > >  ) s0
> > >
> > > This looks fine.  To be a bit more general, you can put "else s1".  If
> > > there is an else that is just a metavariable that is not used
elsewhere,
> > > then it will also match the case where the else is completely absent.
> >
> > I did make the changes you suggested to my coccinelle script. I have a
> > confusion
> > though, when running this script on a directory, the script does not
handle
> > all .c files
> > for some reason. For example wlan-ng staging driver has 12 .c files but
the
> > script says
> > that only 4 files match.
>
> Coccinelle analyzes your semantic patch to find the important words.  In
> this case, they would be kmalloc etc.  I guess the other files don't
> contain these important words.  Since there is no chance that the rule
> will match, Coccinelle doesn't bother parsing them.  Coccinelle parsing
> is often slow, particularly if it can't interpret something, in which
> case is retries, so this gives a big time savings in practice.

That makes a lot of sense. I checked the other files in the driver and they
did not contain the important words as you said.

Thanks,
Gargi

>
> julia
>
>
> >
> > gargi
> > >
> > > julia
> > >
> > > > Thanks,
> > > > Gargi
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google
> > Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it,
send
> > an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to
outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the webvisithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQiZ
> > KNYcY
> > > > 5tWxg30n%2Bqmrq3Yqb2-L1uPHqBA%40mail.gmail.com.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFbaEUW4Nrwkq-AeaX
> > T28xJyX5D0SRkoAyUNDfrijujkw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a1134f06229244c0549406843
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Feb 24, 2017 at 2:16 AM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Fri, 24 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; On Fri, Feb 24, 2017 at 1:27 AM, Julia Lawall &lt;<a href=3D"m=
ailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt; &gt=
; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; On Thu, 23 Feb=
 2017, Gargi Sharma wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Hi,<br>=
&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Here&#39;s my Coccinelle script =
to handle NULL tests for the following<br>&gt; &gt; functions<br>&gt; &gt; =
&gt; &gt; kmalloc, devm_kzalloc, kmalloc_array, devm_ioremap, usb_alloc_urb=
,<br>&gt; &gt; &gt; &gt; alloc_netdev, dev_alloc_skb.<br>&gt; &gt; &gt; &gt=
;<br>&gt; &gt; &gt; &gt; @@<br>&gt; &gt; &gt; &gt; expression ptr;<br>&gt; =
&gt; &gt; &gt; position p;<br>&gt; &gt; &gt; &gt; statement s0;<br>&gt; &gt=
; &gt; &gt; @@<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; ptr@p=3D\(kmal=
loc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc<br>&gt=
; &gt; _<br>&gt; &gt; &gt; &gt; netdev\|dev_alloc_skb\)(...)<br>&gt; &gt; &=
gt; &gt; ... when !=3D ptr<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; if=
 (<br>&gt; &gt; &gt; &gt; (<br>&gt; &gt; &gt; &gt; + !<br>&gt; &gt; &gt; &g=
t; ptr<br>&gt; &gt; &gt; &gt; - =3D=3D NULL<br>&gt; &gt; &gt; &gt; )<br>&gt=
; &gt; &gt; &gt; =C2=A0) s0<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; This looks =
fine.=C2=A0 To be a bit more general, you can put &quot;else s1&quot;.=C2=
=A0 If<br>&gt; &gt; &gt; there is an else that is just a metavariable that =
is not used elsewhere,<br>&gt; &gt; &gt; then it will also match the case w=
here the else is completely absent.<br>&gt; &gt;<br>&gt; &gt; I did make th=
e changes you suggested to my coccinelle script. I have a<br>&gt; &gt; conf=
usion<br>&gt; &gt; though, when running this script on a directory, the scr=
ipt does not handle<br>&gt; &gt; all .c files<br>&gt; &gt; for some reason.=
 For example wlan-ng staging driver has 12 .c files but the<br>&gt; &gt; sc=
ript says<br>&gt; &gt; that only 4 files match.<br>&gt;<br>&gt; Coccinelle =
analyzes your semantic patch to find the important words.=C2=A0 In<br>&gt; =
this case, they would be kmalloc etc.=C2=A0 I guess the other files don&#39=
;t<br>&gt; contain these important words.=C2=A0 Since there is no chance th=
at the rule<br>&gt; will match, Coccinelle doesn&#39;t bother parsing them.=
=C2=A0 Coccinelle parsing<br>&gt; is often slow, particularly if it can&#39=
;t interpret something, in which<br>&gt; case is retries, so this gives a b=
ig time savings in practice.<div><br></div><div>That makes a lot of sense. =
I checked the other files in the driver and they</div><div>did not contain =
the important words as you said.</div><div><br></div><div>Thanks,</div><div=
>Gargi</div><div><br>&gt;<br>&gt; julia<br>&gt;<br>&gt;<br>&gt; &gt;<br>&gt=
; &gt; gargi<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; julia<br>&gt; &gt; &gt;<br=
>&gt; &gt; &gt; &gt; Thanks,<br>&gt; &gt; &gt; &gt; Gargi<br>&gt; &gt; &gt;=
 &gt;<br>&gt; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; You received this me=
ssage because you are subscribed to the Google<br>&gt; &gt; Groups<br>&gt; =
&gt; &gt; &gt; &quot;outreachy-kernel&quot; group.<br>&gt; &gt; &gt; &gt; T=
o unsubscribe from this group and stop receiving emails from it, send<br>&g=
t; &gt; an<br>&gt; &gt; &gt; &gt; email to <a href=3D"mailto:outreachy-kern=
el%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroup=
s.com</a>.<br>&gt; &gt; &gt; &gt; To post to this group, send email to <a h=
ref=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegro=
ups.com</a>.<br>&gt; &gt; &gt; &gt; To view this discussion on the webvisit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/CAOCi2=
DE66sqkwAAQiZ">groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQ=
iZ</a><br>&gt; &gt; KNYcY<br>&gt; &gt; &gt; &gt; 5tWxg30n%2Bqmrq3Yqb2-L1uPH=
qBA%<a href=3D"http://40mail.gmail.com">40mail.gmail.com</a>.<br>&gt; &gt; =
&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/d/op=
tout">https://groups.google.com/d/optout</a>.<br>&gt; &gt; &gt; &gt;<br>&gt=
; &gt; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received thi=
s message because you are subscribed to the Google Groups<br>&gt; &gt; &quo=
t;outreachy-kernel&quot; group.<br>&gt; &gt; To unsubscribe from this group=
 and stop receiving emails from it, send an<br>&gt; &gt; email to <a href=
=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">outreachy-kerne=
l+unsubscribe@googlegroups.com</a>.<br>&gt; &gt; To post to this group, sen=
d email to <a href=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-k=
ernel@googlegroups.com</a>.<br>&gt; &gt; To view this discussion on the web=
 visithttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/=
CAOCi2DFbaEUW4Nrwkq-AeaX">groups.google.com/d/msgid/outreachy-kernel/CAOCi2=
DFbaEUW4Nrwkq-AeaX</a><br>&gt; &gt; T28xJyX5D0SRkoAyUNDfrijujkw%<a href=3D"=
http://40mail.gmail.com">40mail.gmail.com</a>.<br>&gt; &gt; For more option=
s, visit <a href=3D"https://groups.google.com/d/optout">https://groups.goog=
le.com/d/optout</a>.<br>&gt; &gt;<br>&gt; &gt;</div></div>

--001a1134f06229244c0549406843--

