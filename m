X-GM-THRID: 6329721618764398592
X-Received: by 10.237.56.8 with SMTP id j8mr19644081qte.0.1473755099206;
        Tue, 13 Sep 2016 01:24:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.171.198 with SMTP id u189ls1024ioe.5.gmail; Tue, 13 Sep
 2016 01:24:58 -0700 (PDT)
X-Received: by 10.107.137.221 with SMTP id t90mr3208ioi.0.1473755098595;
        Tue, 13 Sep 2016 01:24:58 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id c75si1242073ywh.0.2016.09.13.01.24.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 01:24:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id e5so6716601qtb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 01:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=IC+iCovq/Rb3AMubvfWqmh58wkMGFxM9xa4KxqkEyRY=;
        b=lSFjY8W1VfNwLltZ1SsQRIp2iBuczlZmZrt4WFwmYRsmEjWUIeH0H1Zcs5diFTTPM5
         TjVrore+MhEISWtlRC2tHtzLf95Ng1Z9iSN6zGHbNfJCvbVELUhMWq2wn4BgpRnzvBnW
         Lu3hwnJChS5Z0ysKB8JEBvaBYtrcTnIMYzzvQ3Fh7ghtc86jJDA4b6jhj45/DXmtT4U1
         OsAMnxnOWyH8kUSmPwdz2MblRYX24XIhmAL2qEqlrmLO+2U4cqp8QpCkfoJXCuVn2I4f
         Cwn1H3hKfvpJrLp0WlqYY7WNstUEbkQ/P6m9dw4YDcG1J0KbWakyd7Oyq2ro7oAxX39W
         5XnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IC+iCovq/Rb3AMubvfWqmh58wkMGFxM9xa4KxqkEyRY=;
        b=GIZarNH7B+DlvQE+kb/ah+YBMQYDfs9lStWXO/o9u68NutDOl0J+Su+TvkJBj+wZyD
         nwW7BHZWK7rOcF2n7LVkrx/vhx0fZ1uS95cSfOOtP7AU0Z3ZpZHlIeOu6th9Y4ZhXaOq
         p0g2Z/aAHs+EEGrr7rFI2U6ZKXmecqVJAFSL8UFOl8GrhOGnLlOkilMb+H4/r7Pisxp1
         4WkJ/g6FZ3yRwmvqb4d6aAPK03dVtzXr6kxjzcn/+/LDbDhkJU2taG6zizoQIOFtIzDu
         KEK3Meev2+jcnhINanzZIlpBUZtlvsTyrHW5gc7AYzrVDsypt4yf3bRgM+xS7wrxIPPy
         1C5w==
X-Gm-Message-State: AE9vXwNdSVEHOZIvac8KRmBl1R9jUgptYRhV71fcCOI/AA0bpajT5rHfMo89QJetIQ3z0rgKBtkV74DA34Hx+g==
X-Received: by 10.237.39.34 with SMTP id n31mr25693058qtd.55.1473755098300;
 Tue, 13 Sep 2016 01:24:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Tue, 13 Sep 2016 01:24:57 -0700 (PDT)
In-Reply-To: <3010989.B07XkbaqhU@wuerfel>
References: <20160913075211.GA6959@life-desktop> <3010989.B07XkbaqhU@wuerfel>
From: Anchal Jain <anchalj109@gmail.com>
Date: Tue, 13 Sep 2016 13:54:57 +0530
Message-ID: <CAAbeOSv0+HCx28Ug1eqEnFsEjT3sMuP6aMUR+J2G_gKFuYYcaw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: dgnc_cls.c:
 usleep_range is preferred over udelay
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	lidza.louina@gmail.com
Content-Type: multipart/alternative; boundary=94eb2c12577a1ec6a8053c5f5991

--94eb2c12577a1ec6a8053c5f5991
Content-Type: text/plain; charset=UTF-8

> This gets called from cls_copy_data_from_queue_to_uart() under a spinlock.

According to the documentation "Documentation/timers/timers-howto.txt".
In this documentation no explanation of "spinlock". What is that meaning?

On Tue, Sep 13, 2016 at 1:28 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Tuesday, September 13, 2016 1:22:26 PM CEST Anchal Jain wrote:
> > According to Documentation/timers/timers-howto.txt"
> > udelay() is only called once from a place where sleeping is allowed.
> > We can replace it with a call to usleep_range()
> > with a reasonable upper limit.
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_cls.c      |  6 +++---
> >  drivers/staging/wilc1000/linux_mon.c | 11 +++++++++++
> >  2 files changed, 14 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c
> b/drivers/staging/dgnc/dgnc_cls.c
> > index 4e1e0dc6..1b07255 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -410,7 +410,7 @@ static void cls_assert_modem_signals(struct
> channel_t *ch)
> >       writeb(out, &ch->ch_cls_uart->mcr);
> >
> >       /* Give time for the UART to actually drop the signals */
> > -     udelay(10);
> > +     usleep_range(10, 20);
> >  }
> >
>
> This gets called from cls_copy_data_from_queue_to_uart() under a spinlock.
>
> > diff --git a/drivers/staging/wilc1000/linux_mon.c
> b/drivers/staging/wilc1000/linux_mon.c
> > index 242f82f..22f7684 100644
> > --- a/drivers/staging/wilc1000/linux_mon.c
> > +++ b/drivers/staging/wilc1000/linux_mon.c
> > @@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
> >
> >       /* Get WILC header */
> >       memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
> > +<<<<<<< HEAD
> >       /*
> >        * The packet offset field contain info about what type of
> management
> >        * the frame we are dealing with and ack status
> > +=======
>
> Clearly doesn't belong into the patch.
>
>         Arnd
>

--94eb2c12577a1ec6a8053c5f5991
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; This gets called from cls_copy_data_from_queue_t=
o_<wbr>uart() under a spinlock.<br><br></div>According to the documentation=
 &quot;Documentation/timers/timers-howto.txt&quot;. <br>In this documentati=
on no explanation of &quot;spinlock&quot;. What is that meaning?<br></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 13, 20=
16 at 1:28 PM, Arnd Bergmann <span dir=3D"ltr">&lt;<a href=3D"mailto:arnd@a=
rndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><span class=3D"">On Tuesday, September 13, 2016 1:22:=
26 PM CEST Anchal Jain wrote:<br>
&gt; According to Documentation/timers/timers-<wbr>howto.txt&quot;<br>
&gt; udelay() is only called once from a place where sleeping is allowed.<b=
r>
&gt; We can replace it with a call to usleep_range()<br>
&gt; with a reasonable upper limit.<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/dgnc/dgnc_cls.<wbr>c=C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 6 +++---<br>
&gt;=C2=A0 drivers/staging/wilc1000/<wbr>linux_mon.c | 11 +++++++++++<br>
&gt;=C2=A0 2 files changed, 14 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/dgnc/dgnc_<wbr>cls.c b/drivers/staging/dg=
nc/dgnc_<wbr>cls.c<br>
&gt; index 4e1e0dc6..1b07255 100644<br>
&gt; --- a/drivers/staging/dgnc/dgnc_<wbr>cls.c<br>
&gt; +++ b/drivers/staging/dgnc/dgnc_<wbr>cls.c<br>
&gt; @@ -410,7 +410,7 @@ static void cls_assert_modem_signals(<wbr>struct c=
hannel_t *ch)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0writeb(out, &amp;ch-&gt;ch_cls_uart-&gt;mcr)=
;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Give time for the UART to actually drop t=
he signals */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0udelay(10);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0usleep_range(10, 20);<br>
&gt;=C2=A0 }<br>
&gt;<br>
<br>
</span>This gets called from cls_copy_data_from_queue_to_<wbr>uart() under =
a spinlock.<br>
<span class=3D""><br>
&gt; diff --git a/drivers/staging/wilc1000/<wbr>linux_mon.c b/drivers/stagi=
ng/wilc1000/<wbr>linux_mon.c<br>
&gt; index 242f82f..22f7684 100644<br>
&gt; --- a/drivers/staging/wilc1000/<wbr>linux_mon.c<br>
&gt; +++ b/drivers/staging/wilc1000/<wbr>linux_mon.c<br>
&gt; @@ -59,9 +59,15 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Get WILC header */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(&amp;header, (buff - HOST_HDR_OFFSET)=
, HOST_HDR_OFFSET);<br>
&gt; +&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * The packet offset field contain info abou=
t what type of management<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * the frame we are dealing with and ack sta=
tus<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D<br>
<br>
</span>Clearly doesn&#39;t belong into the patch.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br>
</font></span></blockquote></div><br></div>

--94eb2c12577a1ec6a8053c5f5991--

