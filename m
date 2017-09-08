X-GM-THRID: 6463137391711354880
X-Received: by 10.200.36.210 with SMTP id t18mr1202930qtt.29.1504861891250;
        Fri, 08 Sep 2017 02:11:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.0.216 with SMTP id 207ls927677ita.21.gmail; Fri, 08 Sep
 2017 02:11:30 -0700 (PDT)
X-Received: by 10.129.96.132 with SMTP id u126mr1435797ywb.70.1504861890441;
        Fri, 08 Sep 2017 02:11:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504861890; cv=none;
        d=google.com; s=arc-20160816;
        b=NfbDih5LZ7awWyMezy9GMci3ENoyMSNu9ynySD990+SVh9S1fW/MJcZLanISYKq44r
         5LX3l5tn2dwAlQmrMn4EFIszH8eldMHh0oSRHjY+KXaxdUSPSbgYadScTa0+9RDI+adn
         Di21suFTe8gbszIePb1bwiGD3mhAVGHKK2J+zQsZMiBdXUwVH78nmZM5NhLIL0Ll99wl
         t49uU8ByzoHTcIIVt/uu2o4EoHAzBNWDIzadVKmLpICfBG0/oeJW688me2psEwq6DCPj
         XstI7z0K/+xFGE6aABIjGpfnrTYv/30ZxIw/gd92KQfPE2yvrreT05BG9SW65Tgp0cfq
         5LZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=igggKLHtD9UtEtODrLNbH5OE2wGu5Opr1zzIvw3VFuA=;
        b=iTFd9z6Hi/w/3E3Rr1xTXX/hzUvC/A8DUVfzq9NVjfspKCBcPl6CQNGI++K9bkVPPE
         /NiOp/vjXrR3V1tYDTVP7v+/5GyAqhgOJuxacDjaNGy5wVgJlQwnya3q4H7wUOBCfjyo
         kEGDePNEJ7AcZjAIZC6Qz/t+mOIYdVHnocXtXoWoguyapqgHy8Ilp5jpciHBozr3gHyE
         IEGVU2302RXemiggHeknDJpGxkztpMmvmQW2QM/TkISjEPzXl8gqOJ6AewouxpSJVpeM
         OaPb1Qhw9OzYWNJP/mdbrMlR+o7TYSQRwAVxX6yz7RQVRiV1+sR0ygJ125iFQvMQ3ohT
         vbUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s46vdEa8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id o68si70092vkc.1.2017.09.08.02.11.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:11:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s46vdEa8;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id q29so590164uaf.4
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 02:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=igggKLHtD9UtEtODrLNbH5OE2wGu5Opr1zzIvw3VFuA=;
        b=s46vdEa8GrjSTzalXTKCd/EjyXJSBS5yvxgU83cuj4B+kkvaIOXBr57jFkcB3uU61y
         483/0B59XpBYNInTrEAfctpRjSLhKwD7qdIvzYHg3HRPzA5PJWDS/29z0UJlCCQbP0XA
         rJGZyUbkNtomNIzm6VJwI4vleilt9hlbhL61U0xYKPdP8guCjTZ4AWXKIWscEwGyFJ3/
         Q9NrijXjfgTEITIQ/+w9Xc0kK1Ss7zb5YdUF+dYwFoUf3T8eI3Ec9IogmH/vaHgAuhtm
         be/+u81l9MFTpXvC8utMrOhIMY8hADuJ8p5TeMk+lwUDZVDNDMjIu5r+gLK20qzbLXRr
         5wqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=igggKLHtD9UtEtODrLNbH5OE2wGu5Opr1zzIvw3VFuA=;
        b=KvzD8peGCj03K7I8PrBQA2aSaTPDkL1UvMG9oH9/Aoy9D6csHmXbXmdVsYuDMVEK+X
         v+8+694FNjI+IlA3hobLBRQ/9IqEFK8xhByBBV4nQ0w3YGTd/7n2Ssj9YtV2rccrGqmk
         dUlIkL0ueVSeAwUBDnY7sx8aabdwJaaYpvsWfP7Z+i/cxPkxOLv4WexTDmZ4RjKcFkqs
         hTo+Aj6FdVXvTeoFCGoHmeKoLWwNhWphTbrJhWNNPTHOx2mxEsEaZORAMPjO3g30IUl6
         lOAfBXmlzWpEW+EhT2ix0WKPjddE7TF9gv9R8B4SF3KW80c6eH/XWMqfEIH5rm7EmfAf
         P6WQ==
X-Gm-Message-State: AHPjjUjqbGIz47r1E2aK0wwuqJsHTNdb4KvDct6emx6MiVW4bsfmjt6s
	9ohGE1QcPUJg1489naxXFKl3s+gEjw==
X-Google-Smtp-Source: ADKCNb45C83kK1HorxGriq0NQvRbi5Kb+Y6lXAkf/ODRT+4nFMsySCntiSGHgYXZgSI+ebvwd62kvVZOCiVVKmAH31E=
X-Received: by 10.176.6.8 with SMTP id f8mr1177482uaf.38.1504861890139; Fri,
 08 Sep 2017 02:11:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.10.5 with HTTP; Fri, 8 Sep 2017 02:11:29 -0700 (PDT)
In-Reply-To: <20170908090444.GA18343@kroah.com>
References: <1504816316-9331-1-git-send-email-harshasharmaiitr@gmail.com>
 <28dc8f75-6844-473b-bd38-60762296fdce@googlegroups.com> <alpine.DEB.2.20.1709081031260.3165@hadrien>
 <20170908090444.GA18343@kroah.com>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Fri, 8 Sep 2017 14:41:29 +0530
Message-ID: <CANMOCy3zfpERMu8XMA4iu4VSTmFwA8dFR_OukH1aBYdGT9U5Ng@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging:pi433:pi433_if.c:Fixes
 minor typo errors
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="94eb2c123fe465e0280558a9f694"

--94eb2c123fe465e0280558a9f694
Content-Type: text/plain; charset="UTF-8"

Hello Sir,
I'm really sorry for the last time. I tried to explain what I have done and
sent the exactly same patch for reference.
I will hope that won't affect my upcoming journey in linux-kernel.
I will try to be more clear and submit good patches.
Thanks a lot for your time.

With Regards,
Harsha Sharma

On Fri, Sep 8, 2017 at 2:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Fri, Sep 08, 2017 at 10:32:13AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 8 Sep 2017, Harsha Sharma wrote:
> >
> > >
> > >
> > > On Friday, September 8, 2017 at 2:03:58 AM UTC+5:30, Harsha Sharma
> wrote:
> > >       Fixes checkpatch warning -- "occured" and "succesfully" are
> > >       misspelled
> > >
> > >       Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > >       ---
> > >        drivers/staging/pi433/pi433_if.c | 4 ++--
> > >        1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > >       diff --git a/drivers/staging/pi433/pi433_if.c
> > >       b/drivers/staging/pi433/pi433_if.c
> > >       index 6b9b7df..6a10478 100644
> > >       --- a/drivers/staging/pi433/pi433_if.c
> > >       +++ b/drivers/staging/pi433/pi433_if.c
> > >       @@ -473,7 +473,7 @@ struct pi433_instance {
> > >                }
> > >
> > >
> > >       -        /* rx done, wait was interrupted or error occured */
> > >       +        /* rx done, wait was interrupted or error occurred */
> > >        abort:
> > >                dev->interrupt_rx_allowed = true;
> > >                SET_CHECKED(rf69_set_mode(dev->spi, standby));
> > >       @@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device
> > >       *device)
> > >                        if (retval)
> > >                                return retval;
> > >
> > >       -                dev_dbg(&device->spi->dev, "%s succesfully
> > >       configured", name);
> > >       +                dev_dbg(&device->spi->dev, "%s successfully
> > >       configured", name);
> > >                }
> > >
> > >                return 0;
> > >       --
> > >       1.9.1
> > >
> > > Hi,
> > > Thanks a lot for your time.
> > > I have changed the subject as you said.
> > > Should I wait for this patch getting merged or can I send other
> patches ?
> >
> > It's fine to send other patches immediately.  But it would be better to
> > work on other files, so that there is no confusion about whether one
> > depends on another.
>
> Hm, this is going to get "interesting"...
>
> Harsha's emails do not get through to me, due to their prior
> interactions on the driverdevel mailing list, which caused me to add
> them to my kill-file.  So I don't have any patches to apply here :(
>
> Harsha, given the prior interactions we had, what has changed to make it
> such that I should now be reviewing your patches?  Last time I wasted a
> lot of time, and the feedback I provided was totally ignored, what is
> going to be different this time?
>
> greg k-h
>

--94eb2c123fe465e0280558a9f694
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Sir,<div>I&#39;m really sorry for the last time. I t=
ried to explain what I have done and sent the exactly same patch for refere=
nce.</div><div>I will hope that won&#39;t affect my upcoming journey in lin=
ux-kernel.</div><div>I will try to be more clear and submit good patches.</=
div><div>Thanks a lot for your time.</div><div><br></div><div>With Regards,=
</div><div>Harsha Sharma</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, Sep 8, 2017 at 2:34 PM, Greg KH <span dir=3D"ltr=
">&lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregk=
h@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div class=3D"HOEnZb"><div class=3D"h5">On Fri, Sep 08, 2017 at 10:32:13=
AM +0200, Julia Lawall wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Fri, 8 Sep 2017, Harsha Sharma wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Friday, September 8, 2017 at 2:03:58 AM UTC+5:30, Harsha Sharm=
a wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Fixes checkpatch warning -- &quot;occur=
ed&quot; and &quot;succesfully&quot; are<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0misspelled<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Signed-off-by: Harsha Sharma &lt;<a hre=
f=3D"mailto:harshasharmaiitr@gmail.com">harshasharmaiitr@gmail.com</a>&gt;<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0---<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0drivers/staging/pi433/pi433_<wbr>=
if.c | 4 ++--<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A01 file changed, 2 insertions(+), =
2 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0diff --git a/drivers/staging/pi433/pi43=
3_<wbr>if.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/pi433/pi433_<wbr>if.c=
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0index 6b9b7df..6a10478 100644<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--- a/drivers/staging/pi433/pi433_<wbr>=
if.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0+++ b/drivers/staging/pi433/pi433_<wbr>=
if.c<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0@@ -473,7 +473,7 @@ struct pi433_instan=
ce {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0/* rx done, wait was interrupted or error occured */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0/* rx done, wait was interrupted or error occurred */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0abort:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0dev-&gt;interrupt_rx_<wbr>allowed =3D true;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0SET_CHECKED(rf69_set_<wbr>mode(dev-&gt;spi, standby));<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0@@ -1033,7 +1033,7 @@ static int setup_=
GPIOs(struct pi433_device<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*device)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (retval)<=
br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>return retval;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(&amp;<w=
br>device-&gt;spi-&gt;dev, &quot;%s succesfully<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0configured&quot;, name);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(&amp;<w=
br>device-&gt;spi-&gt;dev, &quot;%s successfully<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0configured&quot;, name);<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0return 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A01.9.1<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt; Thanks a lot for your time.<br>
&gt; &gt; I have changed the subject as you said.=C2=A0<br>
&gt; &gt; Should I wait for this patch getting merged or can I send other p=
atches ?<br>
&gt;<br>
&gt; It&#39;s fine to send other patches immediately.=C2=A0 But it would be=
 better to<br>
&gt; work on other files, so that there is no confusion about whether one<b=
r>
&gt; depends on another.<br>
<br>
</div></div>Hm, this is going to get &quot;interesting&quot;...<br>
<br>
Harsha&#39;s emails do not get through to me, due to their prior<br>
interactions on the driverdevel mailing list, which caused me to add<br>
them to my kill-file.=C2=A0 So I don&#39;t have any patches to apply here :=
(<br>
<br>
Harsha, given the prior interactions we had, what has changed to make it<br=
>
such that I should now be reviewing your patches?=C2=A0 Last time I wasted =
a<br>
lot of time, and the feedback I provided was totally ignored, what is<br>
going to be different this time?<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--94eb2c123fe465e0280558a9f694--

