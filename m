X-GM-THRID: 6609620704439566336
X-Received: by 2002:a02:8930:: with SMTP id o45-v6mr15444450jaj.10.1538927418809;
        Sun, 07 Oct 2018 08:50:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6b8f:: with SMTP id v137-v6ls1839628itc.3.canary-gmail;
 Sun, 07 Oct 2018 08:50:18 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63BHDGPG51PqAYo+ipmuExdXx6JTsMQw3Hy6oULTpn9DC2ecEGM6TOgkX5SRrzjUACMdAan
X-Received: by 2002:a24:bdc7:: with SMTP id x190-v6mr14591999ite.29.1538927418092;
        Sun, 07 Oct 2018 08:50:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538927418; cv=none;
        d=google.com; s=arc-20160816;
        b=Z70Mp4JxYnavq1fL6ex5Og3M9wQF6X1lNILRUJjQtQtFl1kkHkKePUP5xJJdO5vVgZ
         f4kiesb8HhUW5OtWqE/eJXD45kZTYBFBM4ZbLPL6xB63+MCPwFbb6DyaRdaNzkFw2Ki+
         N3PFJ3YseSmLBQtyR/ja4xFSVOV9X3mYVEKzVLsGnNryjFxWENbOyQ8m7E2rWOObb8kP
         6Um5yGwVT3z1I6WrQeYdkxF4rxPmxmgnSexuE5KtXu3SXpyshsmhZ9Jz5UcmA60Cmxic
         uksVv4i5FXYs7Rdv2mlR/LDgWS9fUgfiQFJld1yFyTMIk7lFGQJumoJXGniQjlxsF1Jp
         ocnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MmSAzjDX7LDWiusOg2G937djQgK7P6UFGB7Ij0lrjrc=;
        b=hnZZr6Ls1QBV7bef9eDbUtQWFAfGfFNghXm48iMRzPoo44Rved49Hi8PxlCjb4fNxN
         tbE27MxV8FusKoXD77AXywlBunGOz+9PpMmhQOAvhxar2UiPmJRMmkTuIBIzYteoftDe
         gKJy/JW1SK6jSlTKxDiYXXfvikeHE9ss/rE1ZY1ChM23xfW1kGjaYObk5+GzKZqRlWaB
         wJa1ZrYmKCKT7XndbjmMh3CU8sUhRplecCB4C/yKmj1yvLAe/ufzIV7lQ04PWbG8MtC0
         m33TtpbNXTxWGmcVD2RFv+yP+oFxIG3H/OBiQtPmhxQ5uA8SNBAKtaCQ++L6A0fBqwvm
         KbQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HS3TuDO7;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x142.google.com (mail-it1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id n124-v6si355677itb.0.2018.10.07.08.50.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 08:50:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HS3TuDO7;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x142.google.com with SMTP id l191-v6so8448052ita.4
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 08:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MmSAzjDX7LDWiusOg2G937djQgK7P6UFGB7Ij0lrjrc=;
        b=HS3TuDO7TZzZzP8uUp6Vn1qPbgo2/EJ0p1If1uUmPhwa+Q6dBlUFoYrLZ51zqm7fKm
         GoZfEosIds/2wq7+gKZxLPNT1uR2Zptb2RXf8iy/hK6p8fZVDpQtwGgaZti+GqUHx0m3
         lFxYPL97Do1Ev6PdnseP0xLQzl8qoAidrQGK+ETxvjJzavlUgI3pbTwa6k70jN/2kz+V
         OxhhUcBUWPkGoP+12Qol3Vj22Pkrsr1XdTvBWJ4n8ji0PR7F//e5b6458BkFAqZjDutt
         SR1lvl91Zk5upC2AR9CfEkVUqPk+jInYZufj9lMP2R5KczE65TolufW/JKDbg+HQvOyE
         QI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MmSAzjDX7LDWiusOg2G937djQgK7P6UFGB7Ij0lrjrc=;
        b=ZYQFxxZJMuTMPMZj0W3Tpjdw1x7ugOJYklZsj4hggxfXxVXRM7sUaQyRNqtJ7KVeKd
         LHJFpRCdGQrASiSdpsqJIUqLY9y91+C7Y+EiW2GSCy7Z1yY0BIpjI5c4eRCJrH5u0ikP
         nVOtQfV/enK4qsgL7PcPlFXygbPc+IGxr5ykiZZSBqs2b33tct+NHTD+9kLyHmdRR7T7
         xQP22Ez35vFw3tWC4vIkN+ZWT3HKvAUScVN4IqQT3rV4+sCfemgQDQlLmNyfodLHAiMB
         6omSD/VLHWOyuZwZidrwqE7CA655FTsDWkyC3TRkr0SihlorrAe6pGH3AJvjE2GzzthK
         EcPA==
X-Gm-Message-State: ABuFfojL+zBFLnxI09GWZEdvOxA0Y43BOzpwZq1OOHY4R5grPKt+hEkb
	F3ILG6x0mXSXClXLsKkjNalEnkXmR3qZdv0XjaI=
X-Received: by 2002:a24:9790:: with SMTP id k138-v6mr15194652ite.69.1538927417591;
 Sun, 07 Oct 2018 08:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <20181006205400.GA12894@armorer> <alpine.DEB.2.21.1810071723360.2347@hadrien>
In-Reply-To: <alpine.DEB.2.21.1810071723360.2347@hadrien>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Sun, 7 Oct 2018 03:20:20 +0530
Message-ID: <CAMNCNOXzxLfXZKbW8DoQjB4U0cZoqFQkKyMRWGmzvxQtEPB+aQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: davinci_vpfe: Use
 __func__ instead of function name
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
	gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="0000000000000f97980577a576ee"

--0000000000000f97980577a576ee
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 7, 2018 at 8:58 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 7 Oct 2018, Mamta Shukla wrote:
>
> > Access current function name using __func__.
> > Use %s and __func__ instead of function name.
> > Predefined identifier __func__ gives the name of current function name.
> > Thus, it gives better debug information in this case.
>
> >Actually, the debug information produced is the same as before.  Now,
> >however, the code is more concise and it is more robust, in case the name
> >of the function changes.
>
> >julia
>
> Ok, I will edit the commit message and will revise the patch.

> >
> > Issue found with checkpatch.pl
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >
> > change in v2:
> > -Put useful information above ---
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
> https://groups.google.com/d/msgid/outreachy-kernel/20181006205400.GA12894%40armorer
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>


-- 
Mamta Shukla
Pune Institute  of Computer Technology
Pune
m: 9158516957
e : mamtashukla555@gmail.com

--0000000000000f97980577a576ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun=
, Oct 7, 2018 at 8:58 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@li=
p6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><br>
<br>
On Sun, 7 Oct 2018, Mamta Shukla wrote:<br>
<br>
&gt; Access current function name using __func__.<br>
&gt; Use %s and __func__ instead of function name.<br>
&gt; Predefined identifier __func__ gives the name of current function name=
.<br>
&gt; Thus, it gives better debug information in this case.<br>
<br>
&gt;Actually, the debug information produced is the same as before.=C2=A0 N=
ow,<br>
&gt;however, the code is more concise and it is more robust, in case the na=
me<br>
&gt;of the function changes.<br>
<br>
&gt;julia<br>
<br></blockquote><div>Ok, I will edit the commit message and will revise th=
e patch.<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt;<br>
&gt; Issue found with <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" t=
arget=3D"_blank">checkpatch.pl</a><br>
&gt;<br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; change in v2:<br>
&gt; -Put useful information above ---<br>
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
gle.com/d/msgid/outreachy-kernel/20181006205400.GA12894%40armorer" rel=3D"n=
oreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-ke=
rnel/20181006205400.GA12894%40armorer</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font f=
ace=3D"arial, helvetica, sans-serif">Mamta Shukla</font><div><font face=3D"=
arial, helvetica, sans-serif">Pune Institute=C2=A0 of Computer Technology</=
font></div><div><font face=3D"arial, helvetica, sans-serif">Pune</font></di=
v><div><font face=3D"arial, helvetica, sans-serif">m: 9158516957</font></di=
v><div><font face=3D"arial, helvetica, sans-serif">e :=C2=A0<a href=3D"mail=
to:mamtashukla555@gmail.com" target=3D"_blank">mamtashukla555@gmail.com</a>=
</font></div></div></div></div>

--0000000000000f97980577a576ee--

