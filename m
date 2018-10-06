X-GM-THRID: 6609620704439566336
X-Received: by 2002:aca:c645:: with SMTP id w66-v6mr14801041oif.45.1538923312610;
        Sun, 07 Oct 2018 07:41:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:768e:: with SMTP id j14-v6ls6945808otl.11.gmail; Sun, 07
 Oct 2018 07:41:51 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63eppxahLHLAiIXX25XNIVoG4V/q5F9VdDMruut5Wu3A4rHk6IoQMPsJ25ZtfhBHjrA7kc4
X-Received: by 2002:a9d:490e:: with SMTP id e14mr5514935otf.43.1538923311935;
        Sun, 07 Oct 2018 07:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538923311; cv=none;
        d=google.com; s=arc-20160816;
        b=EHCuyY0bdi1l6LEnc0UAkhBOpJaXDea5aoqOr5YWLzhBGeyYrhG+KJd59ZLN23hGOZ
         yyJmsqPqkBNjLfpVzeiM3fziNR/qXugXgL2Ne2cw5aANEHCh8ApvxwlyBebHnV4QhenQ
         jz8UYwTwWCR0b96L7XaaEwqXNAdNyjAb9UdpbV3jz0gsMsEPdfNX8OwOO92nAD0Gr1Ll
         cO3nuOfLQ+0MyVt+M3OgMtoS8XeacPm70B8aVcP8ZOhKLpPS8q5hWpHGUnsrrqiKT47Y
         QCNF0phaOvpDV2UdhpnuIp8TYHLk7pC+6g4vMy0duAphh8lGM1+FwOeDVAyZOgzkuA3W
         0SmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ooCmLPmB6FQ8VsbJrRN6Ot2/bj0xztvcwzr3nNwwQ8s=;
        b=Nh08Gy7k4iXRu46Cqhj9UEnFJgrMiGoShzjiPfjmQr/YmDZcs549FWNQcFZJCQeJnY
         0uFC9FyUzQe+vJ07LkNPW7ZkJiNrnO6TWtjiY7+H6L7AfHgsNm6d/9VoN/jEjfoilKYT
         cfhr5RVH0XpR2emgZHnJYx5xuk5S0enTj1y5hCG7xdSL7/WeshNsu+ek1CP7fZv8lWxW
         LrskGUk4atQp449NhMvaJsxv8JDREwSLZ3WUbmaBFSZ615dKsFmT3CKeGGd5yauPePU+
         1eiIHH+jYjfPhZB3/BhVmyX9i8UU+Xi3X7dpvfC8Vr+1pElLhJpUckGyltsFkTVU0Kee
         lMQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aV4rhqB+;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id j66-v6si73527otc.3.2018.10.07.07.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 07:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aV4rhqB+;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd42.google.com with SMTP id w16-v6so14030727iom.7
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 07:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ooCmLPmB6FQ8VsbJrRN6Ot2/bj0xztvcwzr3nNwwQ8s=;
        b=aV4rhqB+bmN/gB+EXiUlK0AEatsqB/yQPURjGGl3zUY+jbODMKVky4+Qtc+23NYLsv
         UKsWMII0ODCJihXSsA28nBFDzjpKU87v/0cjVoZZFf1tfj8U3mL7T0HcSf+rfQtPUZwh
         ehIVdNVIKTOjsV3/AFhG4bwGeg2YQ3lvLHlBrYSV1ia9MX8yYLTMSAANS/slgF9kj+FJ
         XYwW+sc0Y1FiMYvMUWRBDy1q6TvmWnU+5PTZ5+sd7SiAC2MWUWMHtR7WC/1gCKretn4O
         SbQ72mG0MqHnpkzEDFj4Mb3YD04J8SrrfbV0pIqMzz7GAEyM/TdR7IyylyBuHjKmR8zd
         n87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ooCmLPmB6FQ8VsbJrRN6Ot2/bj0xztvcwzr3nNwwQ8s=;
        b=ml4T3j8wZm+o33RCZvDXhecV2GBaTqzVxSixmjYsJUL9Lb3INpDPByjboB5GzxvGGR
         Ks6sn5YBsqCF4rr2PUNYJqgZqdFwSrGfN9zpohIKRgmT9qE48TbjE6NKvHLMcpMMLV1u
         IPd4xQOg4xFsep1f3/U1+0fQkiCBeNPy+59s/05JmnXdyufWtpzMb/aVwUFxNRE0z/Yr
         vmiKGCpbzZOjeCeOCcHfi5UfToNeFWWGnqv2FMgD/Vtd39ypJbU66Mza8XTxt4jCjX50
         QtqWrP+qIamaNfVn2CIVDcHlZD9WiVZuWRZtdFflVxGej1qvbEdOFIvngfM1f+pqoZk8
         OIRA==
X-Gm-Message-State: ABuFfoh2NmVybtyYYBlBCILjUiNhVClHXbuLa9LMVbb3A1gDBEpEdJFr
	U8gV4/WxlVzUqLsqOmCP6qPMDWKmvrkHpJy0Q84=
X-Received: by 2002:a6b:9183:: with SMTP id t125-v6mr12582201iod.191.1538923311431;
 Sun, 07 Oct 2018 07:41:51 -0700 (PDT)
MIME-Version: 1.0
References: <20181006202414.GA12019@armorer> <alpine.DEB.2.21.1810071628390.2347@hadrien>
In-Reply-To: <alpine.DEB.2.21.1810071628390.2347@hadrien>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Sun, 7 Oct 2018 02:11:55 +0530
Message-ID: <CAMNCNOWxYGE7U=ck-eU2Jq7MbTyQGJNk6TCvbT3xQPHF3uoezA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Use
 __func__ instead of function name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
	gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="00000000000050862f0577a48133"

--00000000000050862f0577a48133
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 7, 2018 at 8:00 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 7 Oct 2018, Mamta Shukla wrote:
>
> > Access current function name using __func__.
> > Use %s and __func__ instead of function name.
> >
> > Issue found with checkpatch.pl
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >
> > Predefined identifier __func__ gives the name of current function name.
> > Thus, it gives better debug information in this case.
>
>
> >If this information is useful for someone reading the submitted patch, it
> >will be useful for other people in the future when looking through the
> >commit history.  Thus it should be above the ---.  Below the --- you
> >should put version information, or maybe any questions you have about the
> >validity of the patch, ie things that people don't need to know about
> >after tha patch is accepted.
>
> >julia
>

Ok. I will add the information above -- so that it will be helpful and
useful for other people.
I will send revised version of this patch.

>
> >
> >  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > index 9594276..4d09e81 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> > @@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct
> vpfe_ipipe_device *ipipe, void *param)
> >
> >       if (!gamma->bypass_r) {
> >               dev_err(dev,
> > -                     "ipipe_get_gamma_params: table ptr empty for R\n");
> > +                     "%s: table ptr empty for R\n", __func__);
> >               return -EINVAL;
> >       }
> >       memcpy(gamma_param->table_r, gamma->table_r,
> >              (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
> >
> >       if (!gamma->bypass_g) {
> > -             dev_err(dev, "ipipe_get_gamma_params: table ptr empty for
> G\n");
> > +             dev_err(dev, "%s: table ptr empty for G\n", __func__);
> >               return -EINVAL;
> >       }
> >       memcpy(gamma_param->table_g, gamma->table_g,
> >              (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
> >
> >       if (!gamma->bypass_b) {
> > -             dev_err(dev, "ipipe_get_gamma_params: table ptr empty for
> B\n");
> > +             dev_err(dev, "%s: table ptr empty for B\n", __func__);
> >               return -EINVAL;
> >       }
> >       memcpy(gamma_param->table_b, gamma->table_b,
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20181006202414.GA12019%40armorer
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>


-- 
Mamta Shukla
Pune Institute  of Computer Technology
Pune

--00000000000050862f0577a48133
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun=
, Oct 7, 2018 at 8:00 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@li=
p6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><br>
<br>
On Sun, 7 Oct 2018, Mamta Shukla wrote:<br>
<br>
&gt; Access current function name using __func__.<br>
&gt; Use %s and __func__ instead of function name.<br>
&gt;<br>
&gt; Issue found with <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" t=
arget=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; Predefined identifier __func__ gives the name of current function name=
.<br>
&gt; Thus, it gives better debug information in this case.<br>
<br>
<br>
&gt;If this information is useful for someone reading the submitted patch, =
it<br>
&gt;will be useful for other people in the future when looking through the<=
br>
&gt;commit history.=C2=A0 Thus it should be above the ---.=C2=A0 Below the =
--- you<br>
&gt;should put version information, or maybe any questions you have about t=
he<br>
&gt;validity of the patch, ie things that people don&#39;t need to know abo=
ut<br>
&gt;after tha patch is accepted.<br>
<br>
&gt;julia<br></blockquote><div>=C2=A0</div><div>Ok. I will add the informat=
ion above -- so that it will be helpful and useful for other people.<br></d=
iv><div>I will send revised version of this patch. <br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<br>
&gt;<br>
&gt;=C2=A0 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/driver=
s/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; index 9594276..4d09e81 100644<br>
&gt; --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c<br>
&gt; @@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ip=
ipe_device *ipipe, void *param)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!gamma-&gt;bypass_r) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;ipipe_get_gamma_params: table ptr empty for R\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;%s: table ptr empty for R\n&quot;, __func__);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(gamma_param-&gt;table_r, gamma-&gt;ta=
ble_r,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (table_size * sizeof(s=
truct vpfe_ipipe_gamma_entry)));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!gamma-&gt;bypass_g) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;ip=
ipe_get_gamma_params: table ptr empty for G\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;%s=
: table ptr empty for G\n&quot;, __func__);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(gamma_param-&gt;table_g, gamma-&gt;ta=
ble_g,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (table_size * sizeof(s=
truct vpfe_ipipe_gamma_entry)));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!gamma-&gt;bypass_b) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;ip=
ipe_get_gamma_params: table ptr empty for B\n&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;%s=
: table ptr empty for B\n&quot;, __func__);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(gamma_param-&gt;table_b, gamma-&gt;ta=
ble_b,<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20181006202414.GA12019%40armorer" rel=3D"n=
oreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ke=
rnel/20181006202414.GA12019%40armorer</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font f=
ace=3D"arial, helvetica, sans-serif">Mamta Shukla</font><div><font face=3D"=
arial, helvetica, sans-serif">Pune Institute=C2=A0 of Computer Technology</=
font></div><div><font face=3D"arial, helvetica, sans-serif">Pune</font></di=
v><br></div></div></div>

--00000000000050862f0577a48133--

