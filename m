X-GM-THRID: 6751717661102571520
X-Received: by 2002:a9d:1d2:: with SMTP id e76mr3347417ote.30.1572015248026;
        Fri, 25 Oct 2019 07:54:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1ad9:: with SMTP id r25ls2621185otc.1.gmail; Fri,
 25 Oct 2019 07:54:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxAPMFR5+3CLIC5VftUCoiKp7VRfwqAKG2aTd4hATgjsx3iWheJMlIXeL/GTWKz/dojbX72
X-Received: by 2002:a05:6830:1bd4:: with SMTP id v20mr3184299ota.346.1572015246568;
        Fri, 25 Oct 2019 07:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572015246; cv=none;
        d=google.com; s=arc-20160816;
        b=n6M6rhoJShEazVZGKOrtVkGG429dPiXM6mOk4VLWV66FVTICNpvNTE/KLJRkDzxLax
         CVnHk97Dkbi2nMgTcAsDGxrVx0s/7lAe0yE4eD8QmgKhvV0xaZYmu8zEp2oTZ35qRpbc
         qUhDbTjFV1VhE+WQcpFZ5jQ6f2Qtpf2yoAgSv9i3K4b92Q3NLgWVvLK9wK+UBdBbzOVk
         0YYfvCXlAxfnaJ0TeOwgIKxuI6EPtCn/rXbHf90sIh6ZNTkewHtN9jSrdJ3TBXQcPZLi
         n8Y+NjWVx426QooCFqU6AZEYDWWN5aTzzgL6B+t5dwQN6s/ufInJ89YcqThjshmOYrLV
         ZFgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eC1I1TmXGhr4S4pTqwsQAY4Tvb/gNWkcWt62agg4xDE=;
        b=ZPqkheXQ2d75sqGYdMg3uNwRDjYlm/lh836k8NFJ8rsNWVjgXp7foz3faRcHR8fJFy
         vNrD2t/z1bwkufIWNg9hasGdXRdAJ/Tq+9NDF6lwi9hcKcUnWu5cNHOknA+TXLQajKQs
         B0GqTqINmPdTuJEqmpnnDiL8Egz0lMfqXsNiqDUNHM3+fQ5BAwHfkufY7Ui0WcFgpqea
         37MPSr0wo+ba1zeRBi61OzxJ/wtELnC37qLZ2mBd8Z1gN6fV4D+sN/LnSPsk5LFjfNTV
         syNWsF/7ohAXoY1SGcesAPyfnPJscXhp7srd5MCeryNUAdBTYYyMyYKey9FPr/hEeLR+
         MWzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RcZeT3zZ;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id i19si126546otk.0.2019.10.25.07.54.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 07:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RcZeT3zZ;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe42.google.com with SMTP id e12so1641391vsr.4
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 07:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eC1I1TmXGhr4S4pTqwsQAY4Tvb/gNWkcWt62agg4xDE=;
        b=RcZeT3zZaIDxR2cXf5gNTRbwsnAkuquZ1H0X8KtTT2jEdIi3e7zFenK98MrRbTT865
         xONPhXIzESL24hLqu5OQnzc8JkamVd6gyK5vTq3zUA/sqUnxcKlARTr49zzj5vyeWzNL
         u65T14NGrRfr2rUEJExT6X/KZOddMehjwEEH6HxzY04VGxoICwmbiVC28CsIiGBv9eDH
         ULuZFRsiIoFzq+/RtxAFzCcngqoUuDIin7vnwM4B5S8BRXlP1q2XALCWkuLTQRZpE6FL
         dcAvCnMT7k59YdsW0ufBs0IfuaMuk5oGOdm7BvNcuTIipip5ywAD6uhWeKEzRfI82/gT
         fPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eC1I1TmXGhr4S4pTqwsQAY4Tvb/gNWkcWt62agg4xDE=;
        b=J5ZFsZCCLmAxhFSQgKBfnAVQJO3/UAl27bG1FmrSh5atcFcww60cK1FojvZor0Y8W5
         sbhHS3R+VbIBuYEKu2v+yM8IbLXux53oaf80s/zCqaY0c0F9X0SZWgBaP4H78dm6NKyo
         NQsDDhwtfx9aMHlq3snFKTxcVAgFmi6Rz4SNK0dMoI10Af2yNdnlJLiFc39vYpQ8zfqz
         hdwToYwOWYXtrn6ctwZ3UXRnPTZIbkhsIls7kmbvuOwLR1qzB55ZXcnGJ1JNiN3KD2xy
         Os/NmNJX0CfKIUzjFJ7PdSnSuV0jW6Jm3tOclrMhkxguuNw24q/61JXmdglRgHQarxls
         XBWg==
X-Gm-Message-State: APjAAAVduuEiSfUFJDGl2iR/JIxZ3bxKGhS5lbN7+O8nZYwcXX0rOQmg
	XsmnRbJs0qjJ2eGjjdCD2a1F+AbNRZ9dXoFPm7Y=
X-Received: by 2002:a67:304a:: with SMTP id w71mr2116385vsw.92.1572015245981;
 Fri, 25 Oct 2019 07:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191025123245.GA13135@ik-ubuntu> <alpine.DEB.2.21.1910251520470.3307@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910251520470.3307@hadrien>
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Fri, 25 Oct 2019 15:53:55 +0100
Message-ID: <CANR89jZNmuJmmpfEc6FtR0fnEqVLh4z4G5cwuugDSWJEYZF5uA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: clocking-wizard: Remove
 static function unused
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005188f80595bd52a4"

--0000000000005188f80595bd52a4
Content-Type: text/plain; charset="UTF-8"

On Fri, 25 Oct 2019 at 14:22, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 25 Oct 2019, Evan Chime wrote:
>
> > Remove static function clk_wzrd_suspend, that is never used
>
> Are you sure?  I see:
>
> static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
>                          clk_wzrd_resume);
>
> If the code compiled, then maybe it is because there is a configuraion
> option such that there is no power management.
>
> If the function really is useless, it would make sense to remove the
> resume function at the same time, since without suspend, resume doesn't
> seem useful.
>
> julia
>
> >
> > Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> > ---
> >  .../staging/clocking-wizard/clk-xlnx-clock-wizard.c    | 10 ----------
> >  1 file changed, 10 deletions(-)
> >
> > diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> > index 566075f2972c..e0aaf4b276ea 100644
> > --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> > +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
> > @@ -99,16 +99,6 @@ static int clk_wzrd_clk_notifier(struct
> notifier_block *nb, unsigned long event,
> >       }
> >  }
> >
> > -static int __maybe_unused clk_wzrd_suspend(struct device *dev)
> > -{
> > -     struct clk_wzrd *clk_wzrd = dev_get_drvdata(dev);
> > -
> > -     clk_disable_unprepare(clk_wzrd->axi_clk);
> > -     clk_wzrd->suspended = true;
> > -
> > -     return 0;
> > -}
> > -
> >  static int __maybe_unused clk_wzrd_resume(struct device *dev)
> >  {
> >       int ret;
> > --
> > 2.17.1
> >
> > --


I will remove that too. Also SIMPLE_DEV_PM_OPS is declared, but never
defined



> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20191025123245.GA13135%40ik-ubuntu
> .
> >
>

--0000000000005188f80595bd52a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 25 Oct 2019 at 14:22, Julia Lawall &lt;<a href=3D"m=
ailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><br>
<br>
On Fri, 25 Oct 2019, Evan Chime wrote:<br>
<br>
&gt; Remove static function clk_wzrd_suspend, that is never used<br>
<br>
Are you sure?=C2=A0 I see:<br>
<br>
static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0clk_wzrd_resume);<br>
<br>
If the code compiled, then maybe it is because there is a configuraion<br>
option such that there is no power management.<br>
<br>
If the function really is useless, it would make sense to remove the<br>
resume function at the same time, since without suspend, resume doesn&#39;t=
<br>
seem useful.<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Evan Chime &lt;<a href=3D"mailto:chime.evan.dri.devel@g=
mail.com" target=3D"_blank">chime.evan.dri.devel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../staging/clocking-wizard/clk-xlnx-clock-wizard.c=C2=A0 =C2=A0=
 | 10 ----------<br>
&gt;=C2=A0 1 file changed, 10 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b=
/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c<br>
&gt; index 566075f2972c..e0aaf4b276ea 100644<br>
&gt; --- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c<br>
&gt; +++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c<br>
&gt; @@ -99,16 +99,6 @@ static int clk_wzrd_clk_notifier(struct notifier_bl=
ock *nb, unsigned long event,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -static int __maybe_unused clk_wzrd_suspend(struct device *dev)<br>
&gt; -{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct clk_wzrd *clk_wzrd =3D dev_get_drvdata(dev=
);<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0clk_disable_unprepare(clk_wzrd-&gt;axi_clk);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0clk_wzrd-&gt;suspended =3D true;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; -}<br>
&gt; -<br>
&gt;=C2=A0 static int __maybe_unused clk_wzrd_resume(struct device *dev)<br=
>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">I will re=
move that too. Also SIMPLE_DEV_PM_OPS is declared, but never defined</div><=
div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20191025123245.GA13135%40ik-ubuntu" rel=3D=
"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-=
kernel/20191025123245.GA13135%40ik-ubuntu</a>.<br>
&gt;<br>
</blockquote></div></div>

--0000000000005188f80595bd52a4--

