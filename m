X-GM-THRID: 6469984660854145024
X-Received: by 10.107.181.18 with SMTP id e18mr6049526iof.4.1506414823383;
        Tue, 26 Sep 2017 01:33:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.196.65 with SMTP id g62ls719613ywd.40.gmail; Tue, 26 Sep
 2017 01:33:42 -0700 (PDT)
X-Received: by 10.13.203.67 with SMTP id n64mr6068061ywd.195.1506414822591;
        Tue, 26 Sep 2017 01:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414822; cv=none;
        d=google.com; s=arc-20160816;
        b=xJx0OMCQE3hRkWqV/dPNLlSjXvH3q1R2zPSJbOT/Ozn/q58Vd/ci2prWIhAfpVelUt
         30jDFdfNIu7hUopC3+s7jBsukhx2lQbZfgJ0lzwkRuhzC+4RHhjApchOU2YTHroJG99V
         kopm6hft2L4lJ/qfs7pyeoee4r/83g4JkJGabypQj8ulpR9NXBfIDeCuBNu5+p9FzWtP
         PyGKg4QUJW77Lohz+xQf5oax5Nvqsa09QlKBSFm8l0JWdfvhcoPFei68Zra5/8/IXCS7
         VfGSVtiGvoXojAGktK14cBpNxPiTuK+BJ1/WO3XNgqXNgeR5QpzFNx1/ZJs82MfOIHqn
         Eg3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=U9bCUg2vELHc2WUnyRM9mGXe8WURsleBguSBF5PyvIo=;
        b=0l6fajTOvVuqK1kpp7syVqwV/wA+cDgpCROrzHie5IRtMiG7MH60leOadHkrLuTcAL
         Gwm5d0RJTyW0nRM6iTVD4z4/F0AnBovNsXZpGKK3VlA7IOVrvZNHMpoNBV/nwoa23Ic1
         GtG4C4FWU119+qskH1pTRa4J4rr+swjWM5KnL3MYcpcvQatBnKZx7vQblox788FbaoMk
         rRxfgBfevb1ghIvaYnMEwQL3EJKuPRu6j0NgztVguEwwIudzZg0WrGePeVLFg4G8mRaN
         OarMdMVBBTZsuN/mnVyJUipHyNoy/fAY7EFIXIgvcgqToFLdtwkloMjyII7Qnb4ipMJ0
         fVrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxQhPhhC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:4003:c06::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-oi0-x241.google.com (mail-oi0-x241.google.com. [2607:f8b0:4003:c06::241])
        by gmr-mx.google.com with ESMTPS id o65si388654ywf.4.2017.09.26.01.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:4003:c06::241 as permitted sender) client-ip=2607:f8b0:4003:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxQhPhhC;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2607:f8b0:4003:c06::241 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x241.google.com with SMTP id a74so5682346oib.3
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=U9bCUg2vELHc2WUnyRM9mGXe8WURsleBguSBF5PyvIo=;
        b=LxQhPhhCWrRZcYkvALNrMkLLnyNOmY0w68GQDTEElKYsHCGkEqNgFbQ+vOoELqeq7R
         FsuDiC+hxGna6387AkqnfgaLdUDZvNFSMT0DPKoyly4DYJlsdYWZKJukK3ZMDQ2fNvMw
         uYrrHno/YDztLsO/t4Una0PUIpsFw4K0KjxaXMvG8irrb9JqslUwla18kM/G1yBtzyM3
         mduWTDVH7xHS6MPcUBQzxvIrufwU1f2X9i/sMsUHyLuGMuyl0fio7zHU6BhY7E8/fi1d
         4I3Yo6TLnUONFDEyK/8KV67HudDr1e5qeeatHXaRi5LGUOrnU8m5tLhqwkXrsRipKyxv
         Z59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=U9bCUg2vELHc2WUnyRM9mGXe8WURsleBguSBF5PyvIo=;
        b=CBf9NtOAez345KKxptnuFPAuUWDYBE0lkGFzb2zY9ad6CeuugMJXcSy+1X4r7fKR0W
         7YuQYF1UoXMUYFc11bg4uQxq/DqPi35q5SL60JYOBgZ488shVIYB1CYlMHWsytL3JqOS
         nCN1GvsE5tkJG8PpiLZS2Vr7kJdZomwnPGVFQJee2vbDkDOHXZi9LjyK0TZCitfq/+vy
         n3ZPA1Kvlw2cMA0a6npWR0xRnr2tmFg7PDBY/FvC4gJaBuIptoNR4WBz0x3kzNEkufI/
         X8cjbuN9rcFB8NeOTR7BA5S7VONejifiIa/UAIA8l22bHt9BPSzK0APHJztrf6srZldU
         Ilnw==
X-Gm-Message-State: AHPjjUjCzlMk+PElG5+hASt1QAMij7uYzp4WC75JahY8eEhHTXldKrbH
	4D/ZC0gRHTVaKLJYLiPoq8F+HihsjWx97TrA4cw=
X-Google-Smtp-Source: AOwi7QDRQBQW9RQFmw7S/m6T05ie7jU5VoSPcB2/e3URB4XqxCX2BBjM1EmFh5Z0H1kvij+ac96KjuDjHHcrxS6tWA4=
X-Received: by 10.157.62.28 with SMTP id a28mr1634800otd.191.1506414822219;
 Tue, 26 Sep 2017 01:33:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.37.112 with HTTP; Tue, 26 Sep 2017 01:33:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709260938450.7823@hadrien>
References: <20170926072450.GA10682@domino-MS-16Y1> <alpine.DEB.2.20.1709260938450.7823@hadrien>
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
Date: Tue, 26 Sep 2017 11:33:41 +0300
Message-ID: <CANRJjP0di9gZSuzsVZVgVR4OuszmOPY6vzYDMtN3LCV+YaZ62g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Fix indent coding
 style issue
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="f403045e423e5ce48f055a138810"

--f403045e423e5ce48f055a138810
Content-Type: text/plain; charset="UTF-8"

Julia, what you suggest me should I send patch version 3 with mention that
I put your ack in,
or  should  I send other version of patch v2 , with your ack in ?

Mention: I sent this mail from gmail, because I don't have access to my
computer right now

Thank you,

Mihaela

On Tue, Sep 26, 2017 at 10:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 26 Sep 2017, Mihaela Muraru wrote:
>
> > This patch fixes an indentation coding style issue found by
> > checkpatch.pl:
> >
> > WARNING: suspect code indent for conditional statements (16, 32)
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> >
> > ---
> > Changes in v2:
> >    - rewrite the commint message.
>
> You should preserve my ack.
>
> julia
>
> > ---
> >  drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c
> b/drivers/staging/rtl8712/rtl8712_recv.c
> > index 0978727..8f555e6 100644
> > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > @@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame
> *precvframe,
> >       list_add_tail(&(precvframe->u.hdr.list),
> &pfree_recv_queue->queue);
> >       if (padapter != NULL) {
> >               if (pfree_recv_queue == &precvpriv->free_recv_queue)
> > -                             precvpriv->free_recvframe_cnt++;
> > +                     precvpriv->free_recvframe_cnt++;
> >       }
> >       spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
> >       return _SUCCESS;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20170926072450.GA10682%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--f403045e423e5ce48f055a138810
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Julia, what you suggest me should I send patch version 3 w=
ith mention that I put your ack in,<div>or =C2=A0should =C2=A0I send other =
version of patch v2 , with your ack in ?</div><div><br></div><div>Mention: =
I sent this mail from gmail, because I don&#39;t have access to my computer=
 right now</div><div><br></div><div>Thank you,=C2=A0</div><div><br></div><d=
iv>Mihaela</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Tue, Sep 26, 2017 at 10:39 AM, Julia Lawall <span dir=3D"ltr">&lt;<=
a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.=
fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
><br>
<br>
On Tue, 26 Sep 2017, Mihaela Muraru wrote:<br>
<br>
&gt; This patch fixes an indentation coding style issue found by<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a>:<br>
&gt;<br>
&gt; WARNING: suspect code indent for conditional statements (16, 32)<br>
&gt;<br>
&gt; Signed-off-by: Mihaela Muraru &lt;<a href=3D"mailto:mihaela.muraru21@g=
mail.com">mihaela.muraru21@gmail.com</a>&gt;<br>
&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt;=C2=A0 =C2=A0 - rewrite the commint message.<br>
<br>
</span>You should preserve my ack.<br>
<br>
julia<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/<wbr>rtl8712_recv.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/<wbr>rtl8712_recv.c b/drivers/sta=
ging/rtl8712/<wbr>rtl8712_recv.c<br>
&gt; index 0978727..8f555e6 100644<br>
&gt; --- a/drivers/staging/rtl8712/<wbr>rtl8712_recv.c<br>
&gt; +++ b/drivers/staging/rtl8712/<wbr>rtl8712_recv.c<br>
&gt; @@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvfr=
ame,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_add_tail(&amp;(precvframe-&gt;u.<wbr>hd=
r.list), &amp;pfree_recv_queue-&gt;queue);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter !=3D NULL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pfree_recv_q=
ueue =3D=3D &amp;precvpriv-&gt;free_recv_queue)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0precvpriv-&gt;free_recvframe_cnt+<wbr>+;=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0precvpriv-&gt;free_recvframe_cnt+<wbr>+;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock_irqrestore(&amp;pfree_<wbr>recv_=
queue-&gt;lock, irqL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return _SUCCESS;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20170926072450.GA10682%40domino-MS-16Y1" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>msgid/=
outreachy-kernel/<wbr>20170926072450.GA10682%<wbr>40domino-MS-16Y1</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--f403045e423e5ce48f055a138810--

