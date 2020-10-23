X-GM-THRID: 6883926801253400576
X-Received: by 2002:adf:f1c8:: with SMTP id z8mr2867400wro.371.1603460365656;
        Fri, 23 Oct 2020 06:39:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls2164360wrj.0.gmail; Fri, 23 Oct
 2020 06:39:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxWW76Jmi4FlcV4qcO0rlcx9/K4h8byQ30nxPkPCA+Bg/Zwxtj3MlRI7OLtSjYE2aVSAvJO
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr2883650wrw.39.1603460363992;
        Fri, 23 Oct 2020 06:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603460363; cv=none;
        d=google.com; s=arc-20160816;
        b=T9vfEeS5IjtkOGxXYQaa7L7IUZIeDN3951wwqr/5zjB4CAewE9DPxJikfnRLLquwXL
         CrZRL1fw7Ixaw5ZXTRbcD3fm641hMsQxYfWl41i3mjmAxf/i7JpGrp/ithp86rV9XZeT
         YYCb5wPGc8SgZH+oCcbNVnvn4TMFArsV9TwdwAJTqKiptulSTYXFbVHS62Mzz7n8h8F0
         l3iXTi+o0UlkpNxctNBGbplRHLNgJWxVZrFH3mo/w3YTdKpFdvNYRRGVZnO/OqviBUad
         AhsGrrpQ2QEa3Ca0Ak6XTEhj9vmXI6ggcCkKn9i7q7t/bTv1/Ze/P7dFf7zZUyXJ1xj0
         j5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qupwBXmDrf04Wpl6gvNLRffYC9CIH2iuKgUFLl+4ncw=;
        b=gf5GVBWqxBMNueXoMT1E4Rrn+cNXdpYLV9Wu771CUVUMAId7pUY1Y/CdOKctHhTdbk
         yPjqokdq9rL4Gg5UKBDWenmqFcKsB20iRjmcHU20vSe2QKxogduMfDLAsWxmXJ54XBlt
         +uv5cSVB0FhOX6DEB7fb26H29YjFugqZUhWaywvl70pQzL13jrJCKes76QYo0JGu82sZ
         YiR7MgSxACIT2lx153gOgKndf26gtsdYhQLTC7BN2HwQcOaF6W9NXIEyWdkxS3TXmw7x
         N3e17lUomUFXQctUZV6zKofEx3JdzgBDT6zoZPqRrDpH70dNrOmt1dTckh412SI+5wzN
         f/1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ot1fZdUh;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o16si59967wrv.1.2020.10.23.06.39.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 06:39:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ot1fZdUh;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x644.google.com with SMTP id t25so2399994ejd.13
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 06:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qupwBXmDrf04Wpl6gvNLRffYC9CIH2iuKgUFLl+4ncw=;
        b=ot1fZdUhFqMJug/vZ7DWFrMqTv5+5HkSL9hdAshrujLL/2YFbMPPhyv6+jEDAfnEue
         5O3//fMmI7715gS7hfZIXAffLK2PP4nVJNqD8IoviCepmPYAdGWFnFlhXAc8MF/oNGKl
         EBHhCxiFu79NTJEAE0cvKJ2Gja8SiAST5l0mQ7KS2rHnt1D8U7bdvl45ut24nuOFBqqn
         2FLTPsyu81guCSPMUEO203OYjDj9Xhcfj3yiRSMeCoyzDGai07/dK886iTnE151LhP3L
         OvHr0LYXoKGqZ8Dwt4XHkUvXbHrkxpQDKwwCXIBwGtfqF6m9efGIol+OKiwKJzrvfL/G
         iRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qupwBXmDrf04Wpl6gvNLRffYC9CIH2iuKgUFLl+4ncw=;
        b=Ig4W9AtIKgGii9Tk4cmOKIzyP/SJ7n7K6Nb0wd1hG6L0RX5iqa67B5OsC98WSDTkKR
         qU96dCBLCmtlJpBSTBO0mRmLnlz/AxAqgnxh5f4z3k7tAS7nYaB64GN6r4xZuVYXSnVh
         gEFH/idqZqtcF5bqioEutTkiLTIxCUG1AW2AOP/+607jK4tDyhnD8H3STn2/eGQfn+Xi
         qN67SWZ/QWyAncpIIU/ueVWYnFZppBakgi4zaBtxNPf2oJiLPCycCgTxZHqjZmsaMbMC
         7NPZ1+PcYgX0Kbp5raADy0SfukddJvoauWe8d+IiKdGMWK1bC80sL2Hvkr85SBYzt9/9
         +93A==
X-Gm-Message-State: AOAM533YhjnTPFmPctYWd064xmsIdcW6xSL7syUqfNcIloAYAZUDt7qJ
	5GbJzb/3sb6yPxrwkiKBZKFQN3rLKJ5vQ8F9k1vOwswO
X-Received: by 2002:a17:906:c00c:: with SMTP id e12mr1960356ejz.202.1603460363746;
 Fri, 23 Oct 2020 06:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1602767114.git.sylphrenadin@gmail.com> <d2f6183c5e3c333fc1667ea1d0223e8315a8d8ec.1602767114.git.sylphrenadin@gmail.com>
 <CAGngYiWbBqbwPLtTj_k88G4aV+YGd4Jiy0Z1h9pAsCS5H+yXxw@mail.gmail.com>
In-Reply-To: <CAGngYiWbBqbwPLtTj_k88G4aV+YGd4Jiy0Z1h9pAsCS5H+yXxw@mail.gmail.com>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Fri, 23 Oct 2020 19:09:11 +0530
Message-ID: <CACAkLuoEU+JOc-ynrGJP9S4Uw8K-AKqh64Kq8mdtVMQbeX32vg@mail.gmail.com>
Subject: Re: [Outreachy][PATCH 2/3] staging: fieldbus: Replace snprintf() with scnprintf()
To: Sven Van Asbroeck <TheSven73@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000647fec05b256b5a7"

--000000000000647fec05b256b5a7
Content-Type: text/plain; charset="UTF-8"

On Fri, 23 Oct, 2020, 6:33 PM Sven Van Asbroeck, <thesven73@gmail.com>
wrote:

> Hello Sumera, thank you for the patch !
>
> Unfortunately, I think Deepak R Varma sent a patch on 18 October which
> appears to solve this issue in a "better" way, by using sysfs_emit().
>
> I would link to their patch, but I can't seem to find a server hosting the
> outreachy mailing list.
>

Hi Sven,

No worries- Deepak sent the patch before I could send a v2 but it's
alright. No need to send a link- sysfs_emit() is indeed the better way to
do it.

Warm regards,
Sumera


> On Thu, Oct 15, 2020 at 3:16 PM Sumera Priyadarsini
> <sylphrenadin@gmail.com> wrote:
> >
> > The card_name_show() method should return the number of bytes printed
> into
> > the buffer which is the return value of scnprintf(). snprintf() returns
> the
> > potential number of bytes that could be written which may be greater
> > than the actual length to be written.
> >
> > Replace snprintf() with the safer scnprintf() in dev_core.c.
> >
> > Issue found with Coccinelle.
> >
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > ---
> >  drivers/staging/fieldbus/dev_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/fieldbus/dev_core.c
> b/drivers/staging/fieldbus/dev_core.c
> > index 1ba0234cc60d..a0fcd87a1747 100644
> > --- a/drivers/staging/fieldbus/dev_core.c
> > +++ b/drivers/staging/fieldbus/dev_core.c
> > @@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev,
> struct device_attribute *attr,
> >          * card_name was provided by child driver, could potentially be
> long.
> >          * protect against buffer overrun.
> >          */
> > -       return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
> > +       return scnprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
> >  }
> >  static DEVICE_ATTR_RO(card_name);
> >
> > --
> > 2.25.1
> >
>

--000000000000647fec05b256b5a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 23 Oct, 2020, 6:33 PM Sven Van Asbroeck, &lt;<=
a href=3D"mailto:thesven73@gmail.com">thesven73@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">Hello Sumera, thank you for the patch=
 !<br>
<br>
Unfortunately, I think Deepak R Varma sent a patch on 18 October which<br>
appears to solve this issue in a &quot;better&quot; way, by using sysfs_emi=
t().<br>
<br>
I would link to their patch, but I can&#39;t seem to find a server hosting =
the<br>
outreachy mailing list.<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Hi Sven,=C2=A0</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">No worries- Deepak sent the patch before I could send a v2 bu=
t it&#39;s alright. No need to send a link- sysfs_emit() is indeed the bett=
er way to do it.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">W=
arm regards,=C2=A0</div><div dir=3D"auto">Sumera</div><div dir=3D"auto"><br=
></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<br>
On Thu, Oct 15, 2020 at 3:16 PM Sumera Priyadarsini<br>
&lt;<a href=3D"mailto:sylphrenadin@gmail.com" target=3D"_blank" rel=3D"nore=
ferrer">sylphrenadin@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The card_name_show() method should return the number of bytes printed =
into<br>
&gt; the buffer which is the return value of scnprintf(). snprintf() return=
s the<br>
&gt; potential number of bytes that could be written which may be greater<b=
r>
&gt; than the actual length to be written.<br>
&gt;<br>
&gt; Replace snprintf() with the safer scnprintf() in dev_core.c.<br>
&gt;<br>
&gt; Issue found with Coccinelle.<br>
&gt;<br>
&gt; Signed-off-by: Sumera Priyadarsini &lt;<a href=3D"mailto:sylphrenadin@=
gmail.com" target=3D"_blank" rel=3D"noreferrer">sylphrenadin@gmail.com</a>&=
gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/fieldbus/dev_core.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fie=
ldbus/dev_core.c<br>
&gt; index 1ba0234cc60d..a0fcd87a1747 100644<br>
&gt; --- a/drivers/staging/fieldbus/dev_core.c<br>
&gt; +++ b/drivers/staging/fieldbus/dev_core.c<br>
&gt; @@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, st=
ruct device_attribute *attr,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * card_name was provided by child dr=
iver, could potentially be long.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * protect against buffer overrun.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0return snprintf(buf, PAGE_SIZE, &quot;%s\n=
&quot;, fb-&gt;card_name);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return scnprintf(buf, PAGE_SIZE, &quot;%s\=
n&quot;, fb-&gt;card_name);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 static DEVICE_ATTR_RO(card_name);<br>
&gt;<br>
&gt; --<br>
&gt; 2.25.1<br>
&gt;<br>
</blockquote></div></div></div>

--000000000000647fec05b256b5a7--

