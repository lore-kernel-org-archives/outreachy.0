X-GM-THRID: 6330571692278022144
X-Received: by 10.107.16.206 with SMTP id 75mr2936770ioq.31.1473954154764;
        Thu, 15 Sep 2016 08:42:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.81 with SMTP id 75ls3597534otc.6.gmail; Thu, 15 Sep 2016
 08:42:34 -0700 (PDT)
X-Received: by 10.129.90.66 with SMTP id o63mr6938835ywb.43.1473954154324;
        Thu, 15 Sep 2016 08:42:34 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id y77si338432ywd.7.2016.09.15.08.42.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:42:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id p47so1735192qtc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 08:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=P3wpJEigAkeO+XHBYtNjJqPPdsq2ErCyqpbTPZDOyII=;
        b=ouAyiA0hVaaRwHPO0wePd4oovzY2VYxhs5X1sLh/WrdWJJB929OhAXdVJniOZaT3zS
         9kUcSztqYm+wQvWyp6FHD4E9xbYiFmY12Cvin+P4zbi9pAcRzBe1spYq37wp+2RS0XtY
         kIz/xZDS56pzcFA68YzU+my4LLM2a6C0/SAeyyRyXGsMCyF35Pw8lMYQxy/g2OTTd+Z7
         AVBXE7EgYBXcZWlIFRqnHVqAfaR++ZftEW1qVWKV2Jts9FRomhM+Oyr1/VwPs6w8/F3i
         hM764QEWu93JLQxvPCKnH7t+uzhwTVXnLJNk4Cun2VfgfuCYKQu2iQrtNutCAWFDY20B
         6p7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=P3wpJEigAkeO+XHBYtNjJqPPdsq2ErCyqpbTPZDOyII=;
        b=WNOxY0t7Jft4b2+Ix8/RAoxcFb5qvUm6coZNbECpbZMqE+uuvNUNdyU65zXHa24S06
         t+LVNybqDcJt5mpSs5+CqP5kmuySTYNJvKLEjnxktE8l9kd7iTLXTRQBJPtMozNQvLog
         xkTe989HnVM1IsnspmkpSiJcgExpuYmDwgoJK3vCPZx18K9OB2tbzBB6qSNAMFeoWRIg
         29X8J8FeNPZY8Rah0Ugj4NA9z2C2noF4+tj4dM9tGT5aAMRhZpItPVUdNWgrUnEr1Riy
         x/ejkTJo5pOKmV3OlpmVP5xOlnZTkfXKvgPfjvg8Bv8EHwlPrB796wDwWLYgQtoFPb8j
         FJbg==
X-Gm-Message-State: AE9vXwN5Ix005ajO6ccPCFfNhflywSXPslEzuCI5ywy37nRr8Yihtir4//7QDOKNoXo4wAPoBqm6V4qBUUPpzg==
X-Received: by 10.200.52.124 with SMTP id v57mr10002247qtb.137.1473954154092;
 Thu, 15 Sep 2016 08:42:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Thu, 15 Sep 2016 08:42:31 -0700 (PDT)
In-Reply-To: <20160915153925.GB28595@kroah.com>
References: <20160915145101.GA6064@life-desktop> <20160915153925.GB28595@kroah.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Thu, 15 Sep 2016 21:12:31 +0530
Message-ID: <CAAbeOSsm7asHUG8-UMuMpDUtOadyJxPA68aocFFcssPyypbu5g@mail.gmail.com>
Subject: Re: [PATCH] staging: olpc_dcon: Replace BUG/BUG_ON with WARN_ON
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, jon.nettleton@gmail.com
Content-Type: multipart/alternative; boundary=001a113ad820c51ee5053c8db1ed

--001a113ad820c51ee5053c8db1ed
Content-Type: text/plain; charset=UTF-8

Sorry for doing this kind of mistake, Next Time this is not repeat

On Thu, Sep 15, 2016 at 9:09 PM, Greg KH <gregkh@linuxfoundation.org> wrote:

> On Thu, Sep 15, 2016 at 08:21:09PM +0530, Anchal Jain wrote:
> > This patch fixed the warning detect by checkpatch.pl
> >
> > Avoid crashing the kernel - try using WARN_ON & recovery code rather than
> > BUG() or BUG_ON().
> >
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/staging/olpc_dcon/olpc_dcon.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c
> b/drivers/staging/olpc_dcon/olpc_dcon.c
> > index f45b2ef..62e70ee 100644
> > --- a/drivers/staging/olpc_dcon/olpc_dcon.c
> > +++ b/drivers/staging/olpc_dcon/olpc_dcon.c
> > @@ -141,7 +141,7 @@ power_up:
> >       }
> >       if (x < 0) {
> >               pr_err("unable to stabilize dcon's smbus, reasserting
> power and praying.\n");
> > -             BUG_ON(olpc_board_at_least(olpc_board(0xc2)));
> > +             WAARN_ON(olpc_board_at_least(olpc_board(0xc2)));
>
> Did you build this?
>
> Also, the original code is correct here, the line above should have
> given you a hint about this.
>
> Remember, checkpatch is just a guideline, not hard and fast rules.  Here
> it is incorrect.
>
> And again, you didn't even build the code, which is a bit rude :(
>
> thanks,
>
> greg k-h
>

--001a113ad820c51ee5053c8db1ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry for doing this kind of mistake, Next Time this is no=
t repeat<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Thu, Sep 15, 2016 at 9:09 PM, Greg KH <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gregkh@linuxfoundation.org" target=3D"_blank">gregkh@linuxfoundation=
.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On Thu, Sep 15, 2016 at 08:21:09PM +0530, Anchal Jain wrote:<br>
&gt; This patch fixed the warning detect by <a href=3D"http://checkpatch.pl=
" rel=3D"noreferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Avoid crashing the kernel - try using WARN_ON &amp; recovery code rath=
er than<br>
&gt; BUG() or BUG_ON().<br>
&gt;<br>
&gt; Signed-off-by: Anchal Jain &lt;<a href=3D"mailto:anchalj109@gmail.com"=
>anchalj109@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/olpc_dcon/<wbr>olpc_dcon.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c b/drivers/stag=
ing/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; index f45b2ef..62e70ee 100644<br>
&gt; --- a/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; +++ b/drivers/staging/olpc_dcon/<wbr>olpc_dcon.c<br>
&gt; @@ -141,7 +141,7 @@ power_up:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (x &lt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;una=
ble to stabilize dcon&#39;s smbus, reasserting power and praying.\n&quot;);=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUG_ON(olpc_board_at_=
least(<wbr>olpc_board(0xc2)));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WAARN_ON(olpc_board_a=
t_least(<wbr>olpc_board(0xc2)));<br>
<br>
</span>Did you build this?<br>
<br>
Also, the original code is correct here, the line above should have<br>
given you a hint about this.<br>
<br>
Remember, checkpatch is just a guideline, not hard and fast rules.=C2=A0 He=
re<br>
it is incorrect.<br>
<br>
And again, you didn&#39;t even build the code, which is a bit rude :(<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div><br></div>

--001a113ad820c51ee5053c8db1ed--

